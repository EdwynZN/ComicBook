import 'package:freezed_annotation/freezed_annotation.dart';

part 'concept.freezed.dart';
part 'concept.g.dart';

@freezed
class Concept with _$Concept {
  const factory Concept({
    @JsonKey(required: true, disallowNullValue: true)
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
    @JsonKey(required: true, disallowNullValue: true)
    required String name,
  }) = _Concept;
	
  factory Concept.fromJson(Map<String, dynamic> json) =>
			_$ConceptFromJson(json);
}
