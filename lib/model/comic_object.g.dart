// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicObject _$$_ComicObjectFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$_ComicObject(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$_ComicObjectToJson(_$_ComicObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
