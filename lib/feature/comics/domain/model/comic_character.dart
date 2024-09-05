import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_character.freezed.dart';
part 'comic_character.g.dart';

@freezed
class ComicCharacter with _$ComicCharacter {
  const factory ComicCharacter({
    @JsonKey(required: true, disallowNullValue: true)
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
    @JsonKey(required: true, disallowNullValue: true)
    required String name,
  }) = SimpleComicCharacter;
	
  factory ComicCharacter.fromJson(Map<String, dynamic> json) =>
			_$ComicCharacterFromJson(json);
}
