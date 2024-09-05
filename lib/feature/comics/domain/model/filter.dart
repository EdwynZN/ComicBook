import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter.freezed.dart';

enum Sort { asc, desc }

@Freezed(toJson: false, fromJson: false)
class Filter with _$Filter {
  const factory Filter({
    required String value,
    @Default(Sort.desc)
    Sort sort,
  }) = _Filter;
}
