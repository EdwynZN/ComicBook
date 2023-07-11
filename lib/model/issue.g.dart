// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleIssue _$$SimpleIssueFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'api_detail_url',
      'date_added',
      'issue_number',
      'image'
    ],
    disallowNullValues: const [
      'id',
      'api_detail_url',
      'date_added',
      'issue_number',
      'image'
    ],
  );
  return _$SimpleIssue(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    dateAdded: DateTime.parse(json['date_added'] as String),
    name: json['name'] as String?,
    number: json['issue_number'] as String,
    image: ComicImage.fromJson(json['image'] as Map<String, dynamic>),
    $type: json['runtimeType'] as String?,
  );
}

Map<String, dynamic> _$$SimpleIssueToJson(_$SimpleIssue instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'api_detail_url': instance.detailUrl,
    'date_added': instance.dateAdded.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['issue_number'] = instance.number;
  val['image'] = instance.image.toJson();
  val['runtimeType'] = instance.$type;
  return val;
}

_$DetailedIssue _$$DetailedIssueFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'api_detail_url',
      'cover_date',
      'date_added',
      'date_last_updated',
      'image',
      'issue_number'
    ],
    disallowNullValues: const [
      'id',
      'api_detail_url',
      'cover_date',
      'date_added',
      'date_last_updated',
      'image',
      'issue_number'
    ],
  );
  return _$DetailedIssue(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    coverDate: DateTime.parse(json['cover_date'] as String),
    dateAdded: DateTime.parse(json['date_added'] as String),
    dateLastUpdated: DateTime.parse(json['date_last_updated'] as String),
    image: ComicImage.fromJson(json['image'] as Map<String, dynamic>),
    character: (json['character_credits'] as List<dynamic>?)
            ?.map(
                (e) => SimpleComicCharacter.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    locations: (json['location_credits'] as List<dynamic>?)
            ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    teams: (json['team_credits'] as List<dynamic>?)
            ?.map((e) => Team.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    people: (json['person_credits'] as List<dynamic>?)
            ?.map((e) => Person.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    comicObjects: (json['object_credits'] as List<dynamic>?)
            ?.map((e) => ComicObject.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    name: json['name'] as String?,
    number: json['issue_number'] as String,
    $type: json['runtimeType'] as String?,
  );
}

Map<String, dynamic> _$$DetailedIssueToJson(_$DetailedIssue instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'api_detail_url': instance.detailUrl,
    'cover_date': instance.coverDate.toIso8601String(),
    'date_added': instance.dateAdded.toIso8601String(),
    'date_last_updated': instance.dateLastUpdated.toIso8601String(),
    'image': instance.image.toJson(),
    'character_credits': instance.character.map((e) => e.toJson()).toList(),
    'location_credits': instance.locations.map((e) => e.toJson()).toList(),
    'team_credits': instance.teams.map((e) => e.toJson()).toList(),
    'person_credits': instance.people.map((e) => e.toJson()).toList(),
    'object_credits': instance.comicObjects.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['issue_number'] = instance.number;
  val['runtimeType'] = instance.$type;
  return val;
}
