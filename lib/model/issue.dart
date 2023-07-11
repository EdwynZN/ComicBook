import 'package:comic_book/model/comic_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

String _concatName(Map<dynamic, dynamic> json, String key) {
  final issueNumber = json[key] as String;
  final name = json['name'] as String?;
  if (name == null) {
    return '#$issueNumber';
  }
  return '$name #$issueNumber';
}

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
    required DateTime date,
    @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName,
    )
    required String name,
    @JsonKey(required: true, disallowNullValue: true) required ComicImage image,
  }) = SimpleIssue;

  String get imageUrl => image.originalUrl;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
