import 'package:comic_book/model/details_issue.dart';
import 'package:comic_book/model/issue.dart';
import 'package:dio/dio.dart';

interface class ComicBookRepository {
  final Dio _dio;

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
      },
    );
    final data = (result.data as List<dynamic>).cast<Map<String, dynamic>>();
    final issues = data.map(SimpleIssue.fromJson).toList();
    return issues;
  }

  Future<DetailsIssue> issueDetails({
    required final String id,
  }) async {
    final result = await _dio.get('issue/4000-$id/');
    final data = result.data as Map<String, dynamic>;
    final issue = DetailsIssue.fromJson(data);
    return issue;
  }

  Future<DetailsIssue> issueDetailsFromDetailsUrl({
    required final String url,
  }) async {
    final uri = Uri.parse(url);
    final result = await _dio.fetch(
      Options(method: 'GET').compose(
        _dio.options.copyWith(baseUrl: uri.origin),
        uri.path,
      ),
    );
    final data = result.data as Map<String, dynamic>;
    final issue = DetailsIssue.fromJson(data);
    return issue;
  }
}
