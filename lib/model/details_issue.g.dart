// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsIssue _$$_DetailsIssueFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'cover_date',
      'date_added',
      'date_last_updated',
      'image',
      'issue_number'
    ],
    disallowNullValues: const [
      'id',
      'cover_date',
      'date_added',
      'date_last_updated',
      'image',
      'issue_number'
    ],
  );
  return _$_DetailsIssue(
    aliases: json['aliases'] as String?,
    id: json['id'] as int,
    coverDate: DateTime.parse(json['cover_date'] as String),
    dateAdded: DateTime.parse(json['date_added'] as String),
    dateLastUpdated: DateTime.parse(json['date_last_updated'] as String),
    image: ComicImage.fromJson(json['image'] as Map<String, dynamic>),
    character: (json['character_credits'] as List<dynamic>?)
            ?.map(
                (e) => SimpleComicCharacter.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    name: _concatName(json, 'issue_number') as String,
  );
}

Map<String, dynamic> _$$_DetailsIssueToJson(_$_DetailsIssue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('aliases', instance.aliases);
  val['id'] = instance.id;
  val['cover_date'] = instance.coverDate.toIso8601String();
  val['date_added'] = instance.dateAdded.toIso8601String();
  val['date_last_updated'] = instance.dateLastUpdated.toIso8601String();
  val['image'] = instance.image.toJson();
  val['character_credits'] = instance.character.map((e) => e.toJson()).toList();
  val['issue_number'] = instance.name;
  return val;
}
