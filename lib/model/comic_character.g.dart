// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleComicCharacter _$$SimpleComicCharacterFromJson(
    Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'name'],
    disallowNullValues: const ['id', 'name'],
  );
  return _$SimpleComicCharacter(
    id: json['id'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$SimpleComicCharacterToJson(
        _$SimpleComicCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
