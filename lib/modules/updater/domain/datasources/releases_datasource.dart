import 'package:mcquenji_core/mcquenji_core.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

/// Data source for fetching releases.
abstract class ReleasesDatasource extends Datasource {
  @override
  String get name => 'Releases';

  /// Gets the latest release for the given [channel].
  Future<Release> getLatestRelease(ReleaseChannel channel);

  /// Gets the latest release for each channel.
  ///
  /// The key is the [ReleaseChannel] and the value is the latest [Release].
  Future<Map<ReleaseChannel, Release>> getReleases();
}

/// Extension on `Map<ReleaseChannel, Release>` to provide convenient access to different release channels.
///
/// This extension provides getter methods to access specific releases based on their release channels.
/// It also provides nullable getter methods to access releases that may be null.
///
/// Example usage:
/// ```dart
/// Map<ReleaseChannel, Release> releases = {...};
/// Release stableRelease = releases.stable;
/// Release? betaRelease = releases.betaOrNull;
/// ```
extension ReleasesDatasourceX on Map<ReleaseChannel, Release> {
  /// Returns this[ReleaseChannel.stable] or throws if not present.
  Release get stable => this[ReleaseChannel.stable]!;

  /// Returns this[ReleaseChannel.beta] or throws if not present.
  Release get beta => this[ReleaseChannel.beta]!;

  /// Returns this[ReleaseChannel.dev] or throws if not present.
  Release get dev => this[ReleaseChannel.dev]!;

  /// Returns this[ReleaseChannel.canary] or throws if not present.
  Release get canary => this[ReleaseChannel.canary]!;

  /// Returns this[ReleaseChannel.stable] or `null` if not present.
  Release? get stableOrNull => this[ReleaseChannel.stable];

  /// Returns this[ReleaseChannel.beta] or `null` if not present.
  Release? get betaOrNull => this[ReleaseChannel.beta];

  /// Returns this[ReleaseChannel.dev] or `null` if not present.
  Release? get devOrNull => this[ReleaseChannel.dev];

  /// Returns this[ReleaseChannel.canary] or `null` if not present.
  Release? get canaryOrNull => this[ReleaseChannel.canary];

  /// Returns `true` if this[ReleaseChannel.stable] is present.
  bool get hasStable => containsKey(ReleaseChannel.stable);

  /// Returns `true` if this[ReleaseChannel.beta] is present.
  bool get hasBeta => containsKey(ReleaseChannel.beta);

  /// Returns `true` if this[ReleaseChannel.dev] is present.
  bool get hasDev => containsKey(ReleaseChannel.dev);

  /// Returns `true` if this[ReleaseChannel.canary] is present.
  bool get hasCanary => containsKey(ReleaseChannel.canary);

  /// Returns `true` if all release channels are present.
  bool get hasAllChannels => ReleaseChannel.values.every(containsKey);
}
