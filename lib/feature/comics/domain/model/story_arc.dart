import 'package:freezed_annotation/freezed_annotation.dart';

part 'story_arc.freezed.dart';
part 'story_arc.g.dart';

@freezed
class StoryArc with _$StoryArc {
  const factory StoryArc({
    @JsonKey(required: true, disallowNullValue: true)
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
    @JsonKey(required: true, disallowNullValue: true)
    required String name,
  }) = _StoryArc;
	
  factory StoryArc.fromJson(Map<String, dynamic> json) =>
			_$StoryArcFromJson(json);
}
