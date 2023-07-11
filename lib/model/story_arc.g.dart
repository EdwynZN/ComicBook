// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_arc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoryArc _$$_StoryArcFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$_StoryArc(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$_StoryArcToJson(_$_StoryArc instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
