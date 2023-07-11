import 'package:comic_book/model/comic_character.dart';
import 'package:comic_book/model/comic_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  const Issue._();

  const factory Issue.reduced({
    @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'id',
    )
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
    required DateTime dateAdded,
    @JsonKey(name: 'name') String? name,
    @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
    )
    required String number,
    @JsonKey(required: true, disallowNullValue: true) required ComicImage image,
  }) = SimpleIssue;

  const factory Issue.details({
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
    @JsonKey(name: 'name') String? name,
    @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
    )
    required String number,
  }) = DetailedIssue;

  String get imageUrl => image.originalUrl;

  String get completeName {
    final numberFormat = '#$number';
    final name = this.name;
    return name == null ? numberFormat : '$name $numberFormat';
  }

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
