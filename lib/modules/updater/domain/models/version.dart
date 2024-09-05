// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

part 'version.freezed.dart';
part 'version.g.dart';

/// Represents a version number following the [semantic versioning specification](https://semver.org/).
///
/// **Note:** Pre-release versions are not supported, see [Release.channel] instead.
@freezed
class Version with _$Version implements Comparable<Version> {
  /// Represents a version number following the [semantic versioning specification](https://semver.org/).
  ///
  /// **Note:** Pre-release versions are not supported, see [Release.channel] instead.
  const factory Version({
    /// The major version number.
    required int major,

    /// The minor version number.
    required int minor,

    /// The patch version number.
    required int patch,

    /// The build version number.
    @Default(0) int build,
  }) = _Version;

  const Version._();

  /// Version number from json.
  factory Version.fromJson(Map<String, Object?> json) => _$VersionFromJson(json);

  /// A version with all fields set to `0`.
  static const zero = Version(major: 0, minor: 0, patch: 0);

  /// Parses a version number from a string.
  ///
  /// The string must be in the format `major.minor.patch[+build]` (e.g. `1.2.3+4`) where `build` is optional.
  factory Version.fromString(String version) {
    final parts = version.split('.');
    if (parts.length < 3) {
      throw ArgumentError('Invalid version string: $version');
    }
    final major = int.parse(parts[0]);
    final minor = int.parse(parts[1]);
    final patch = int.parse(parts[2]);

    int? build;

    if (version.contains('+')) {
      final buildParts = version.split('+');
      build = int.parse(buildParts.last);
    }

    return Version(major: major, minor: minor, patch: patch, build: build ?? 0);
  }

  @override
  int compareTo(Version other) {
    if (major != other.major) {
      return major.compareTo(other.major);
    }

    if (minor != other.minor) {
      return minor.compareTo(other.minor);
    }

    if (patch != other.patch) {
      return patch.compareTo(other.patch);
    }

    return build.compareTo(other.build);
  }

  /// Returns `true` if this version is less than the [other] version, otherwise returns `false`.
  bool operator <(Version other) => compareTo(other) < 0;

  /// Returns `true` if this version is less than or equal to the [other] version, otherwise returns `false`.
  bool operator <=(Version other) => compareTo(other) <= 0;

  /// Returns `true` if this version is greater than the [other] version, otherwise returns `false`.
  bool operator >(Version other) => compareTo(other) > 0;

  /// Returns `true` if this version is greater than or equal to the [other] version, otherwise returns `false`.
  bool operator >=(Version other) => compareTo(other) >= 0;

  @override
  String toString() {
    return '$major.$minor.$patch${build > 0 ? '+$build' : ''}';
  }
}
