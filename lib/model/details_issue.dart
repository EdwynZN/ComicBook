import 'package:comic_book/model/comic_character.dart';
import 'package:comic_book/model/comic_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'details_issue.freezed.dart';
part 'details_issue.g.dart';

String _concatName(Map<dynamic, dynamic> json, String key) {
  final issueNumber = json[key] as String;
  final name = json['name'] as String?;
  if (name == null) {
    return '#$issueNumber';
  }
  return '$name #$issueNumber';
}

@Freezed(
  copyWith: false,
  when: FreezedWhenOptions(maybeWhen: false, when: false, whenOrNull: false),
  map: FreezedMapOptions(maybeMap: false, map: false, mapOrNull: false),
)
class DetailsIssue with _$DetailsIssue {
  const factory DetailsIssue({
    final String? aliases,
    @JsonKey(required: true, disallowNullValue: true)
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
    required DateTime coverDate,
    @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
    required DateTime dateAdded,
    @JsonKey(required: true, disallowNullValue: true, name: 'date_last_updated')
    required DateTime dateLastUpdated,
    @JsonKey(required: true, disallowNullValue: true)
    required ComicImage image,
    @JsonKey(defaultValue: [], name: 'character_credits')
    required List<SimpleComicCharacter> character,
    @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName,
    )
    required String name,
  }) = _DetailsIssue;
	
  factory DetailsIssue.fromJson(Map<String, dynamic> json) =>
			_$DetailsIssueFromJson(json);
}
/* 
@Freezed(
  copyWith: false,
  when: FreezedWhenOptions(maybeWhen: false, when: false, whenOrNull: false),
  map: FreezedMapOptions(maybeMap: false, map: false, mapOrNull: false),
)
class DetailsIssue with _$DetailsIssue {
  const factory DetailsIssue({
    final String? aliases,

  }) = _DetailsIssue;
	
  factory DetailsIssue.fromJson(Map<String, dynamic> json) =>
			_$DetailsIssueFromJson(json);
}

@Freezed(
  copyWith: false,
  when: FreezedWhenOptions(maybeWhen: false, when: false, whenOrNull: false),
  map: FreezedMapOptions(maybeMap: false, map: false, mapOrNull: false),
)
class DetailsIssue with _$DetailsIssue {
  const factory DetailsIssue({
    final String? aliases,

  }) = _DetailsIssue;
	
  factory DetailsIssue.fromJson(Map<String, dynamic> json) =>
			_$DetailsIssueFromJson(json);
}
 */