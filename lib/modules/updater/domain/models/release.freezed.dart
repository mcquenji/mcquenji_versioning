// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'release.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Release _$ReleaseFromJson(Map<String, dynamic> json) {
  return _Release.fromJson(json);
}

/// @nodoc
mixin _$Release {
  /// The version of the release.
  Version get version => throw _privateConstructorUsedError;

  /// The release channel.
  ReleaseChannel get channel => throw _privateConstructorUsedError;

  /// Patch notes describing the changes in this release.
  String get patchNotes => throw _privateConstructorUsedError;

  /// The date when the release was published.
  @UnixDateTimeConverter()
  DateTime get releaseDate => throw _privateConstructorUsedError;

  /// The downloads for this release.
  ///
  /// The key is the platform and the value is the download url.
  ///
  /// ---
  ///
  /// It is not specified what the download url is for, it could be a patch file, an installer, etc.
  Map<Platform, String> get downloads => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReleaseCopyWith<Release> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReleaseCopyWith<$Res> {
  factory $ReleaseCopyWith(Release value, $Res Function(Release) then) =
      _$ReleaseCopyWithImpl<$Res, Release>;
  @useResult
  $Res call(
      {Version version,
      ReleaseChannel channel,
      String patchNotes,
      @UnixDateTimeConverter() DateTime releaseDate,
      Map<Platform, String> downloads});

  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class _$ReleaseCopyWithImpl<$Res, $Val extends Release>
    implements $ReleaseCopyWith<$Res> {
  _$ReleaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? channel = null,
    Object? patchNotes = null,
    Object? releaseDate = null,
    Object? downloads = null,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ReleaseChannel,
      patchNotes: null == patchNotes
          ? _value.patchNotes
          : patchNotes // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as Map<Platform, String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VersionCopyWith<$Res> get version {
    return $VersionCopyWith<$Res>(_value.version, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReleaseImplCopyWith<$Res> implements $ReleaseCopyWith<$Res> {
  factory _$$ReleaseImplCopyWith(
          _$ReleaseImpl value, $Res Function(_$ReleaseImpl) then) =
      __$$ReleaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Version version,
      ReleaseChannel channel,
      String patchNotes,
      @UnixDateTimeConverter() DateTime releaseDate,
      Map<Platform, String> downloads});

  @override
  $VersionCopyWith<$Res> get version;
}

/// @nodoc
class __$$ReleaseImplCopyWithImpl<$Res>
    extends _$ReleaseCopyWithImpl<$Res, _$ReleaseImpl>
    implements _$$ReleaseImplCopyWith<$Res> {
  __$$ReleaseImplCopyWithImpl(
      _$ReleaseImpl _value, $Res Function(_$ReleaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? channel = null,
    Object? patchNotes = null,
    Object? releaseDate = null,
    Object? downloads = null,
  }) {
    return _then(_$ReleaseImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as ReleaseChannel,
      patchNotes: null == patchNotes
          ? _value.patchNotes
          : patchNotes // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as Map<Platform, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReleaseImpl extends _Release {
  const _$ReleaseImpl(
      {required this.version,
      this.channel = ReleaseChannel.stable,
      this.patchNotes = '',
      @UnixDateTimeConverter() required this.releaseDate,
      final Map<Platform, String> downloads = const {}})
      : _downloads = downloads,
        super._();

  factory _$ReleaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReleaseImplFromJson(json);

  /// The version of the release.
  @override
  final Version version;

  /// The release channel.
  @override
  @JsonKey()
  final ReleaseChannel channel;

  /// Patch notes describing the changes in this release.
  @override
  @JsonKey()
  final String patchNotes;

  /// The date when the release was published.
  @override
  @UnixDateTimeConverter()
  final DateTime releaseDate;

  /// The downloads for this release.
  ///
  /// The key is the platform and the value is the download url.
  ///
  /// ---
  ///
  /// It is not specified what the download url is for, it could be a patch file, an installer, etc.
  final Map<Platform, String> _downloads;

  /// The downloads for this release.
  ///
  /// The key is the platform and the value is the download url.
  ///
  /// ---
  ///
  /// It is not specified what the download url is for, it could be a patch file, an installer, etc.
  @override
  @JsonKey()
  Map<Platform, String> get downloads {
    if (_downloads is EqualUnmodifiableMapView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_downloads);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReleaseImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.patchNotes, patchNotes) ||
                other.patchNotes == patchNotes) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, channel, patchNotes,
      releaseDate, const DeepCollectionEquality().hash(_downloads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReleaseImplCopyWith<_$ReleaseImpl> get copyWith =>
      __$$ReleaseImplCopyWithImpl<_$ReleaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReleaseImplToJson(
      this,
    );
  }
}

abstract class _Release extends Release {
  const factory _Release(
      {required final Version version,
      final ReleaseChannel channel,
      final String patchNotes,
      @UnixDateTimeConverter() required final DateTime releaseDate,
      final Map<Platform, String> downloads}) = _$ReleaseImpl;
  const _Release._() : super._();

  factory _Release.fromJson(Map<String, dynamic> json) = _$ReleaseImpl.fromJson;

  @override

  /// The version of the release.
  Version get version;
  @override

  /// The release channel.
  ReleaseChannel get channel;
  @override

  /// Patch notes describing the changes in this release.
  String get patchNotes;
  @override

  /// The date when the release was published.
  @UnixDateTimeConverter()
  DateTime get releaseDate;
  @override

  /// The downloads for this release.
  ///
  /// The key is the platform and the value is the download url.
  ///
  /// ---
  ///
  /// It is not specified what the download url is for, it could be a patch file, an installer, etc.
  Map<Platform, String> get downloads;
  @override
  @JsonKey(ignore: true)
  _$$ReleaseImplCopyWith<_$ReleaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
