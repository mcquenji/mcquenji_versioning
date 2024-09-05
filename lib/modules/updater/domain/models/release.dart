// ignore_for_file: invalid_annotation_target

import 'dart:io' as io;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mcquenji_versioning/modules/updater/updater.dart';

part 'release.freezed.dart';
part 'release.g.dart';

/// Represents a release.
@freezed
class Release with _$Release implements Comparable<Release> {
  /// Represents a release.
  const factory Release({
    /// The version of the release.
    required Version version,

    /// The release channel.
    @Default(ReleaseChannel.stable) ReleaseChannel channel,

    /// Patch notes describing the changes in this release.
    @Default('') String patchNotes,

    /// The date when the release was published.
    @UnixDateTimeConverter() required DateTime releaseDate,

    /// The downloads for this release.
    ///
    /// The key is the platform and the value is the download url.
    ///
    /// ---
    ///
    /// It is not specified what the download url is for, it could be a patch file, an installer, etc.
    @Default({}) Map<Platform, String> downloads,
  }) = _Release;

  const Release._();

  /// Release from json.
  factory Release.fromJson(Map<String, Object?> json) => _$ReleaseFromJson(json);

  @override
  int compareTo(Release other) {
    final versionComparison = version.compareTo(other.version);
    if (versionComparison != 0) {
      return versionComparison;
    }

    final channelComparison = channel.index.compareTo(other.channel.index);

    if (channelComparison != 0) {
      return channelComparison;
    }

    return releaseDate.compareTo(other.releaseDate);
  }

  /// Returns `true` if this release is newer than [other].
  bool operator >(Release other) => compareTo(other) > 0;

  /// Returns `true` if this release is older than [other].
  bool operator <(Release other) => compareTo(other) < 0;

  /// Returns `true` if this release is newer or equal to [other].
  bool operator >=(Release other) => compareTo(other) >= 0;

  /// Returns `true` if this release is older or equal to [other].
  bool operator <=(Release other) => compareTo(other) <= 0;

  @override
  String toString() {
    final build = version.build > 0 ? '+${version.build}' : '';

    return '${version.major}.${version.minor}.${version.patch}-${channel.name}$build';
  }
}

/// Represents a release channel.
enum ReleaseChannel {
  /// Stable release channel.
  ///
  /// This is the default channel.
  stable,

  /// Beta release channel.
  ///
  /// This typically contains features that are almost ready for the stable channel.
  beta,

  /// Dev release channel.
  ///
  /// This typically contains features that are still in development.
  dev,

  /// Canary release channel.
  ///
  /// This typically contains experimental features that have to be evaluated and may never be released.
  canary,
}

/// A platform where the release is available.
enum Platform {
  /// Android platform.
  android,

  /// iOS platform.
  ios,

  /// macOS platform.
  macos,

  /// Windows platform.
  windows,

  /// Web platform.
  web,

  /// Linux platform.
  linux;

  /// The current platform.
  static Platform get current {
    if (io.Platform.isAndroid) {
      return Platform.android;
    } else if (io.Platform.isIOS) {
      return Platform.ios;
    } else if (io.Platform.isMacOS) {
      return Platform.macos;
    } else if (io.Platform.isWindows) {
      return Platform.windows;
    } else if (io.Platform.isLinux) {
      return Platform.linux;
    } else {
      return Platform.web;
    }
  }
}

/// Converts a [DateTime] to and from a Unix timestamp.
class UnixDateTimeConverter extends JsonConverter<DateTime, int> {
  /// Converts a [DateTime] to and from a Unix timestamp.
  const UnixDateTimeConverter();

  @override
  DateTime fromJson(int json) {
    return DateTime.fromMillisecondsSinceEpoch(json * 1000);
  }

  @override
  int toJson(DateTime object) {
    return object.millisecondsSinceEpoch ~/ 1000;
  }
}
