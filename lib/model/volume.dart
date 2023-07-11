import 'package:freezed_annotation/freezed_annotation.dart';

part 'volume.freezed.dart';
part 'volume.g.dart';

@freezed
class Volume with _$Volume {
  const factory Volume({
    @JsonKey(required: true, disallowNullValue: true)
    required int id,
    @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
    required String detailUrl,
    @JsonKey(required: true, disallowNullValue: true)
    required String name,
  }) = _Volume;
	
  factory Volume.fromJson(Map<String, dynamic> json) =>
			_$VolumeFromJson(json);
}
