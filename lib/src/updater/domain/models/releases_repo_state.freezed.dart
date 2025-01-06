// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'releases_repo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReleasesRepoState {
  /// The current version of the app.
  Version get currentVersion => throw _privateConstructorUsedError;

  /// The current channel.
  ReleaseChannel get channel => throw _privateConstructorUsedError;

  /// Latest releases for each channel.
  Map<ReleaseChannel, Release> get latestReleases =>
      throw _privateConstructorUsedError;

  /// Progress of the installation process.
  ///
  /// Negative values indicate that no installation is in progress.
  double get progress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReleasesRepoStateCopyWith<ReleasesRepoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleasesRepoStateCopyWith<$Res> {
  factory $ReleasesRepoStateCopyWith(
          ReleasesRepoState value, $Res Function(ReleasesRepoState) then) =
      _$ReleasesRepoStateCopyWithImpl<$Res, ReleasesRepoState>;
  @useResult
  $Res call(
      {Version currentVersion,
      ReleaseChannel channel,
      Map<ReleaseChannel, Release> latestReleases,
      double progress});

  $VersionCopyWith<$Res> get currentVersion;
}

/// @nodoc
class _$ReleasesRepoStateCopyWithImpl<$Res, $Val extends ReleasesRepoState>
    implements $ReleasesRepoStateCopyWith<$Res> {
  _$ReleasesRepoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentVersion = null,
    Object? channel = null,
    Object? latestReleases = null,
    Object? progress = null,
  }) {
    return _then(_value.copyWith(
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as Version,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ReleaseChannel,
      latestReleases: null == latestReleases
          ? _value.latestReleases
          : latestReleases // ignore: cast_nullable_to_non_nullable
              as Map<ReleaseChannel, Release>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionCopyWith<$Res> get currentVersion {
    return $VersionCopyWith<$Res>(_value.currentVersion, (value) {
      return _then(_value.copyWith(currentVersion: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReleasesRepoStateImplCopyWith<$Res>
    implements $ReleasesRepoStateCopyWith<$Res> {
  factory _$$ReleasesRepoStateImplCopyWith(_$ReleasesRepoStateImpl value,
          $Res Function(_$ReleasesRepoStateImpl) then) =
      __$$ReleasesRepoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Version currentVersion,
      ReleaseChannel channel,
      Map<ReleaseChannel, Release> latestReleases,
      double progress});

  @override
  $VersionCopyWith<$Res> get currentVersion;
}

/// @nodoc
class __$$ReleasesRepoStateImplCopyWithImpl<$Res>
    extends _$ReleasesRepoStateCopyWithImpl<$Res, _$ReleasesRepoStateImpl>
    implements _$$ReleasesRepoStateImplCopyWith<$Res> {
  __$$ReleasesRepoStateImplCopyWithImpl(_$ReleasesRepoStateImpl _value,
      $Res Function(_$ReleasesRepoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentVersion = null,
    Object? channel = null,
    Object? latestReleases = null,
    Object? progress = null,
  }) {
    return _then(_$ReleasesRepoStateImpl(
      currentVersion: null == currentVersion
          ? _value.currentVersion
          : currentVersion // ignore: cast_nullable_to_non_nullable
              as Version,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ReleaseChannel,
      latestReleases: null == latestReleases
          ? _value._latestReleases
          : latestReleases // ignore: cast_nullable_to_non_nullable
              as Map<ReleaseChannel, Release>,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ReleasesRepoStateImpl extends _ReleasesRepoState {
  const _$ReleasesRepoStateImpl(
      {required this.currentVersion,
      required this.channel,
      required final Map<ReleaseChannel, Release> latestReleases,
      this.progress = -1})
      : _latestReleases = latestReleases,
        super._();

  /// The current version of the app.
  @override
  final Version currentVersion;

  /// The current channel.
  @override
  final ReleaseChannel channel;

  /// Latest releases for each channel.
  final Map<ReleaseChannel, Release> _latestReleases;

  /// Latest releases for each channel.
  @override
  Map<ReleaseChannel, Release> get latestReleases {
    if (_latestReleases is EqualUnmodifiableMapView) return _latestReleases;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_latestReleases);
  }

  /// Progress of the installation process.
  ///
  /// Negative values indicate that no installation is in progress.
  @override
  @JsonKey()
  final double progress;

  @override
  String toString() {
    return 'ReleasesRepoState(currentVersion: $currentVersion, channel: $channel, latestReleases: $latestReleases, progress: $progress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleasesRepoStateImpl &&
            (identical(other.currentVersion, currentVersion) ||
                other.currentVersion == currentVersion) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            const DeepCollectionEquality()
                .equals(other._latestReleases, _latestReleases) &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentVersion, channel,
      const DeepCollectionEquality().hash(_latestReleases), progress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleasesRepoStateImplCopyWith<_$ReleasesRepoStateImpl> get copyWith =>
      __$$ReleasesRepoStateImplCopyWithImpl<_$ReleasesRepoStateImpl>(
          this, _$identity);
}

abstract class _ReleasesRepoState extends ReleasesRepoState {
  const factory _ReleasesRepoState(
      {required final Version currentVersion,
      required final ReleaseChannel channel,
      required final Map<ReleaseChannel, Release> latestReleases,
      final double progress}) = _$ReleasesRepoStateImpl;
  const _ReleasesRepoState._() : super._();

  @override

  /// The current version of the app.
  Version get currentVersion;
  @override

  /// The current channel.
  ReleaseChannel get channel;
  @override

  /// Latest releases for each channel.
  Map<ReleaseChannel, Release> get latestReleases;
  @override

  /// Progress of the installation process.
  ///
  /// Negative values indicate that no installation is in progress.
  double get progress;
  @override
  @JsonKey(ignore: true)
  _$$ReleasesRepoStateImplCopyWith<_$ReleasesRepoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
