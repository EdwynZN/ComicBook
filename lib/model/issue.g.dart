// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleIssue _$$SimpleIssueFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'date_added', 'issue_number', 'image'],
    disallowNullValues: const ['id', 'date_added', 'issue_number', 'image'],
  );
  return _$SimpleIssue(
    id: json['id'] as int,
    date: DateTime.parse(json['date_added'] as String),
    name: _concatName(json, 'issue_number') as String,
    image: ComicImage.fromJson(json['image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$$SimpleIssueToJson(_$SimpleIssue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_added': instance.date.toIso8601String(),
      'issue_number': instance.name,
      'image': instance.image.toJson(),
    };
