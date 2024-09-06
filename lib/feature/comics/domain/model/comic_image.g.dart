// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicImageImpl _$$ComicImageImplFromJson(Map<String, dynamic> json) {
  $checkKeys(
    json,
    requiredKeys: const [
      'icon_url',
      'medium_url',
      'screen_url',
      'screen_large_url',
      'small_url',
      'super_url',
      'thumb_url',
      'tiny_url',
      'original_url',
      'image_tags'
    ],
    disallowNullValues: const [
      'icon_url',
      'medium_url',
      'screen_url',
      'screen_large_url',
      'small_url',
      'super_url',
      'thumb_url',
      'tiny_url',
      'original_url',
      'image_tags'
    ],
  );
  return _$ComicImageImpl(
    iconUrl: json['icon_url'] as String,
    mediumUrl: json['medium_url'] as String,
    screenUrl: json['screen_url'] as String,
    screenLargeUrl: json['screen_large_url'] as String,
    smallUrl: json['small_url'] as String,
    superUrl: json['super_url'] as String,
    thumbUrl: json['thumb_url'] as String,
    tinyUrl: json['tiny_url'] as String,
    originalUrl: json['original_url'] as String,
    imageTags: json['image_tags'] as String,
  );
}

Map<String, dynamic> _$$ComicImageImplToJson(_$ComicImageImpl instance) =>
    <String, dynamic>{
      'icon_url': instance.iconUrl,
      'medium_url': instance.mediumUrl,
      'screen_url': instance.screenUrl,
      'screen_large_url': instance.screenLargeUrl,
      'small_url': instance.smallUrl,
      'super_url': instance.superUrl,
      'thumb_url': instance.thumbUrl,
      'tiny_url': instance.tinyUrl,
      'original_url': instance.originalUrl,
      'image_tags': instance.imageTags,
    };
