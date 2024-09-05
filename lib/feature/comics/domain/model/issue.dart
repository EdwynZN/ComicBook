import 'package:comic_book/feature/comics/domain/model/comic_character.dart';
import 'package:comic_book/feature/comics/domain/model/comic_image.dart';
import 'package:comic_book/feature/comics/domain/model/comic_object.dart';
import 'package:comic_book/feature/comics/domain/model/concept.dart';
import 'package:comic_book/feature/comics/domain/model/location.dart';
import 'package:comic_book/feature/comics/domain/model/person.dart';
import 'package:comic_book/feature/comics/domain/model/story_arc.dart';
import 'package:comic_book/feature/comics/domain/model/team.dart';
import 'package:comic_book/feature/comics/domain/model/volume.dart';
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
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
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
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
    @JsonKey(name: 'cover_date')
    DateTime? coverDate,
    @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
    required DateTime dateAdded,
    @JsonKey(required: true, disallowNullValue: true, name: 'date_last_updated')
    required DateTime dateLastUpdated,
    @JsonKey(name: 'store_date')
    DateTime? storeDate,
    @JsonKey(required: true, disallowNullValue: true)
    required ComicImage image,
    @JsonKey(required: true, disallowNullValue: true)
    required Volume volume,
    @JsonKey(defaultValue: [], name: 'story_arc_credits')
    required List<StoryArc> storyArcs,
    @JsonKey(defaultValue: [], name: 'character_credits')
    required List<SimpleComicCharacter> characters,
    @JsonKey(defaultValue: [], name: 'location_credits')
    required List<Location> locations,
    @JsonKey(defaultValue: [], name: 'team_credits')
    required List<Team> teams,
    @JsonKey(defaultValue: [], name: 'person_credits')
    required List<Person> people,
    @JsonKey(defaultValue: [], name: 'object_credits')
    required List<ComicObject> comicObjects,
    @JsonKey(defaultValue: [], name: 'concept_credits')
    required List<Concept> concepts,
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
