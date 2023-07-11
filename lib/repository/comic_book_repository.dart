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
}
