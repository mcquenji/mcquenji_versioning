// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReleaseImpl _$$ReleaseImplFromJson(Map<String, dynamic> json) =>
    _$ReleaseImpl(
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
      channel: $enumDecodeNullable(_$ReleaseChannelEnumMap, json['channel']) ??
          ReleaseChannel.stable,
      patchNotes: json['patchNotes'] as String? ?? '',
      releaseDate: const UnixDateTimeConverter()
          .fromJson((json['releaseDate'] as num).toInt()),
      downloads: (json['downloads'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$PlatformEnumMap, k), e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$ReleaseImplToJson(_$ReleaseImpl instance) =>
    <String, dynamic>{
      'version': instance.version.toJson(),
      'channel': _$ReleaseChannelEnumMap[instance.channel]!,
      'patchNotes': instance.patchNotes,
      'releaseDate': const UnixDateTimeConverter().toJson(instance.releaseDate),
      'downloads':
          instance.downloads.map((k, e) => MapEntry(_$PlatformEnumMap[k]!, e)),
    };

const _$ReleaseChannelEnumMap = {
  ReleaseChannel.stable: 'stable',
  ReleaseChannel.beta: 'beta',
  ReleaseChannel.dev: 'dev',
  ReleaseChannel.canary: 'canary',
};

const _$PlatformEnumMap = {
  Platform.android: 'android',
  Platform.ios: 'ios',
  Platform.macos: 'macos',
  Platform.windows: 'windows',
  Platform.web: 'web',
  Platform.linux: 'linux',
};
