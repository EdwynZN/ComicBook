// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleComicCharacter _$$SimpleComicCharacterFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$SimpleComicCharacter(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$SimpleComicCharacterToJson(
        _$SimpleComicCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
