import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_image.freezed.dart';
part 'comic_image.g.dart';

@freezed
class ComicImage with _$ComicImage {
  const factory ComicImage({
    @JsonKey(required: true, disallowNullValue: true, name: 'icon_url')
    required String iconUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'medium_url')
    required String mediumUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'screen_url')
    required String screenUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'screen_large_url')
    required String screenLargeUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'small_url')
    required String smallUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'super_url')
    required String superUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'thumb_url')
    required String thumbUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'tiny_url')
    required String tinyUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'original_url')
    required String originalUrl,
    @JsonKey(required: true, disallowNullValue: true, name: 'image_tags')
    required String imageTags,
  }) = _ComicImage;
	
  factory ComicImage.fromJson(Map<String, dynamic> json) =>
			_$ComicImageFromJson(json);
}
