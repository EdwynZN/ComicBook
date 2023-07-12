import 'package:comic_book/model/issue.dart';
import 'package:dio/dio.dart';

interface class ComicBookRepository {
  final Dio _dio;

  final List<String> _issuesFields = const [
    'api_detail_url',
    'id',
    'image',
    'name',
    'issue_number',
    'date_added',
  ];

  final List<String> _issueDetailFields = const [
    'api_detail_url',
    'cover_date',
    'date_added',
    'date_last_updated',
    'store_date',
    'volume',
    'id',
    'image',
    'name',
    'issue_number',
    'story_arc_credits',
    'character_credits',
    'location_credits',
    'team_credits',
    'person_credits',
    'object_credits',
    'concept_credits',
  ];

  const ComicBookRepository(this._dio);

  Future<List<SimpleIssue>> issues({
    required final int offset,
    final int pageSize = 100,
  }) async {
    final result = await _dio.get(
      'issues/',
      queryParameters: {
        'offset': offset,
        'limit': pageSize,
        'field_list': _issuesFields,
      },
    );
    final data = (result.data as List<dynamic>).cast<Map<String, dynamic>>();
    final issues = data.map(SimpleIssue.fromJson).toList();
    return issues;
  }

  Future<DetailedIssue> issueDetails({
    required final String id,
  }) async {
    final result = await _dio.get('issue/4000-$id/');
    final data = result.data as Map<String, dynamic>;
    final issue = DetailedIssue.fromJson(data);
    return issue;
  }

  Future<DetailedIssue> issueDetailsFromUrl({
    required final String url,
  }) async {
    final uri = Uri.parse(url);
    final result = await _dio.fetch(
      Options(method: 'GET').compose(
        _dio.options.copyWith(baseUrl: uri.origin),
        uri.path,
        queryParameters: {'field_list': _issueDetailFields},
      ),
    );
    final data = result.data as Map<String, dynamic>;
    final issue = DetailedIssue.fromJson(data);
    return issue;
  }
}
