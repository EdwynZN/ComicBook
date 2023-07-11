// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Volume _$$_VolumeFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$_Volume(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$_VolumeToJson(_$_Volume instance) => <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
