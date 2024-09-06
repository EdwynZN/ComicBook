// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleComicCharacterImpl _$$SimpleComicCharacterImplFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$SimpleComicCharacterImpl(
    id: (json['id'] as num).toInt(),
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$SimpleComicCharacterImplToJson(
        _$SimpleComicCharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
