// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PersonImpl _$$PersonImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'api_detail_url', 'name', 'role'],
    disallowNullValues: const ['id', 'api_detail_url', 'name', 'role'],
  );
  return _$PersonImpl(
    id: (json['id'] as num).toInt(),
    detailUrl: json['api_detail_url'] as String,
    name: json['name'] as String,
    role: json['role'] as String,
  );
}

Map<String, dynamic> _$$PersonImplToJson(_$PersonImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_detail_url': instance.detailUrl,
      'name': instance.name,
      'role': instance.role,
    };
