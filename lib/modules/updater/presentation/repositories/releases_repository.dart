import 'dart:async';

import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

/// {@template releases_repository}
/// Provides the latest releases and the current version of the app.
///
/// For this repository to work, you need to register an implementation of [ReleasesDatasource], [AppInfoService] and [PatchService].
/// Use [InjectorUptaterX.setupReleasesRepository] to register the required services.
///
/// This repository does not check for updates automatically. Call [checkForUpdates] manually.
///
/// If [PatchService.canApplyPatch] returns `false`, the state will be an error of type [ManualInstallRequiredException] containing installation instructions.
/// {@endtemplate}
class ReleasesRepository extends Repository<AsyncValue<ReleasesRepoState>> {
  final ReleasesDatasource _releases;
  final AppInfoService _appInfo;
  final PatchService _patcher;

  /// {@macro releases_repository}
  ReleasesRepository(this._releases, this._appInfo, this._patcher) : super(AsyncValue.loading()) {
    checkForUpdates();
  }

  /// Checks for updates.
  Future<void> checkForUpdates() async {
    await guard(() async {
      final currentVersion = await _appInfo.getCurrentVersion();
      final channel = await _appInfo.getCurrentReleaseChannel();
      final latestReleases = await _releases.getReleases();

      return ReleasesRepoState(
        currentVersion: currentVersion,
        channel: channel,
        latestReleases: latestReleases,
      );
    });
  }

  /// Installs the latest release for the current channel.
  Future<void> installLatestRelease() async {
    log('Installing latest release...');

    if (!state.hasData) {
      log('No data available');

      return;
    }

    if (state.requireData.isUpToDate) {
      log('App is up-to-date');

      return;
    }

    final release = state.requireData.latestReleases[state.requireData.channel];

    if (release == null) {
      log('No release available for channel ${state.requireData.channel}');

      return;
    }

    await _applyPatch(release, state.requireData.currentVersion, state.requireData.channel);
  }

  /// Switches the release channel and installs the latest release for the new channel.
  Future<void> switchChannel(ReleaseChannel channel) async {
    log('Switching to channel $channel...');

    if (!state.hasData) {
      log('No data available');

      return;
    }

    if (state.requireData.channel == channel) {
      log('Already on channel $channel');

      return;
    }

    final release = state.requireData.latestReleases[channel];

    if (release == null) {
      log('No release available for channel $channel');

      return;
    }

    await _applyPatch(release, state.requireData.currentVersion, channel);
  }

  Future<void> _applyPatch(Release release, Version currentVersion, ReleaseChannel currentChannel) async {
    log('Applying patch for ${release.version}...');

    if (!state.hasData) {
      log('No data available');

      return;
    }

    if (state.requireData.installationInProgress) {
      log('Installation already in progress');

      return;
    }

    if (!_patcher.canApplyPatch(release, currentVersion, currentChannel)) {
      log('Cannot apply patch. Manual installation required.');

      error(
        ManualInstallRequiredException(
          _patcher.getManualInstructions(release, currentVersion, currentChannel),
        ),
      );

      return;
    }

    data(state.requireData.copyWith(progress: 0));

    await for (final progress in _patcher.applyPatch(release, currentVersion, currentChannel)) {
      data(state.requireData.copyWith(progress: progress));

      log('Patch progress: $progress');
    }

    log('Patch applied successfully');

    await checkForUpdates();
  }

  @override
  void dispose() {
    super.dispose();
    _releases.dispose();
    _appInfo.dispose();
  }
}
