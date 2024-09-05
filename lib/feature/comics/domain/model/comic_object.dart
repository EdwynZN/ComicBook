import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_object.freezed.dart';
part 'comic_object.g.dart';

@freezed
class ComicObject with _$ComicObject {
  const factory ComicObject({
    @JsonKey(required: true, disallowNullValue: true)
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
    @JsonKey(required: true, disallowNullValue: true)
    required String name,
  }) = _ComicObject;
	
  factory ComicObject.fromJson(Map<String, dynamic> json) =>
			_$ComicObjectFromJson(json);
}
