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
      'volume',
      'issue_number'
    ],
    disallowNullValues: const [
      'id',
      'api_detail_url',
      'cover_date',
      'date_added',
      'date_last_updated',
      'image',
      'volume',
      'issue_number'
    ],
  );
  return _$DetailedIssue(
    id: json['id'] as int,
    detailUrl: json['api_detail_url'] as String,
    coverDate: DateTime.parse(json['cover_date'] as String),
    dateAdded: DateTime.parse(json['date_added'] as String),
    dateLastUpdated: DateTime.parse(json['date_last_updated'] as String),
    storeDate: json['store_date'] == null
        ? null
        : DateTime.parse(json['store_date'] as String),
    image: ComicImage.fromJson(json['image'] as Map<String, dynamic>),
    volume: Volume.fromJson(json['volume'] as Map<String, dynamic>),
    storyArcs: (json['story_arc_credits'] as List<dynamic>?)
            ?.map((e) => StoryArc.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    characters: (json['character_credits'] as List<dynamic>?)
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
    concepts: (json['concept_credits'] as List<dynamic>?)
            ?.map((e) => Concept.fromJson(e as Map<String, dynamic>))
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
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('store_date', instance.storeDate?.toIso8601String());
  val['image'] = instance.image.toJson();
  val['volume'] = instance.volume.toJson();
  val['story_arc_credits'] = instance.storyArcs.map((e) => e.toJson()).toList();
  val['character_credits'] =
      instance.characters.map((e) => e.toJson()).toList();
  val['location_credits'] = instance.locations.map((e) => e.toJson()).toList();
  val['team_credits'] = instance.teams.map((e) => e.toJson()).toList();
  val['person_credits'] = instance.people.map((e) => e.toJson()).toList();
  val['object_credits'] = instance.comicObjects.map((e) => e.toJson()).toList();
  val['concept_credits'] = instance.concepts.map((e) => e.toJson()).toList();
  writeNotNull('name', instance.name);
  val['issue_number'] = instance.number;
  val['runtimeType'] = instance.$type;
  return val;
}
