// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story_arc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoryArcImpl _$$StoryArcImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$StoryArcImpl(
    id: (json['id'] as num).toInt(),
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$StoryArcImplToJson(_$StoryArcImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
