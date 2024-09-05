// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

part 'releases_repo_state.freezed.dart';

/// State of [ReleasesRepository].
@freezed
class ReleasesRepoState with _$ReleasesRepoState {
  /// State of [ReleasesRepository].
  const factory ReleasesRepoState({
    /// The current version of the app.
    required Version currentVersion,

    /// The current channel.
    required ReleaseChannel channel,

    /// Latest releases for each channel.
    required Map<ReleaseChannel, Release> latestReleases,

    /// Progress of the installation process.
    ///
    /// Negative values indicate that no installation is in progress.
    @Default(-1) double progress,
  }) = _ReleasesRepoState;

  const ReleasesRepoState._();

  /// `true` if the current version is up-to-date.
  bool get isUpToDate => !updateAvailable;

  /// `true` if a new version is available for the current [channel].
  bool get updateAvailable => latestReleases[channel] != null && latestReleases[channel]!.version > currentVersion;

  /// `true` if an installation is in progress.
  bool get installationInProgress => progress >= 0.0;
}
