// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name'],
    disallowNullValues: const ['id', 'api_detail_url', 'name'],
  );
  return _$_Team(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
    };
