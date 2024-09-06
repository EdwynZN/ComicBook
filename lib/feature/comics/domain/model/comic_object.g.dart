// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicObjectImpl _$$ComicObjectImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$ComicObjectImpl(
    id: (json['id'] as num).toInt(),
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$ComicObjectImplToJson(_$ComicObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
