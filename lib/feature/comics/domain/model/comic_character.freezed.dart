// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicCharacter _$ComicCharacterFromJson(Map<String, dynamic> json) {
  return SimpleComicCharacter.fromJson(json);
}

/// @nodoc
mixin _$ComicCharacter {
  @JsonKey(required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicCharacterCopyWith<ComicCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCharacterCopyWith<$Res> {
  factory $ComicCharacterCopyWith(
          ComicCharacter value, $Res Function(ComicCharacter) then) =
      _$ComicCharacterCopyWithImpl<$Res, ComicCharacter>;
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true) String name});
}

/// @nodoc
class _$ComicCharacterCopyWithImpl<$Res, $Val extends ComicCharacter>
    implements $ComicCharacterCopyWith<$Res> {
  _$ComicCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detailUrl = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleComicCharacterCopyWith<$Res>
    implements $ComicCharacterCopyWith<$Res> {
  factory _$$SimpleComicCharacterCopyWith(_$SimpleComicCharacter value,
          $Res Function(_$SimpleComicCharacter) then) =
      __$$SimpleComicCharacterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true) String name});
}

/// @nodoc
class __$$SimpleComicCharacterCopyWithImpl<$Res>
    extends _$ComicCharacterCopyWithImpl<$Res, _$SimpleComicCharacter>
    implements _$$SimpleComicCharacterCopyWith<$Res> {
  __$$SimpleComicCharacterCopyWithImpl(_$SimpleComicCharacter _value,
      $Res Function(_$SimpleComicCharacter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detailUrl = null,
    Object? name = null,
  }) {
    return _then(_$SimpleComicCharacter(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleComicCharacter implements SimpleComicCharacter {
  const _$SimpleComicCharacter(
      {@JsonKey(required: true, disallowNullValue: true) required this.id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required this.detailUrl,
      @JsonKey(required: true, disallowNullValue: true) required this.name});

  factory _$SimpleComicCharacter.fromJson(Map<String, dynamic> json) =>
      _$$SimpleComicCharacterFromJson(json);

  @override
  @JsonKey(required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  final String detailUrl;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  final String name;

  @override
  String toString() {
    return 'ComicCharacter(id: $id, detailUrl: $detailUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleComicCharacter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, detailUrl, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleComicCharacterCopyWith<_$SimpleComicCharacter> get copyWith =>
      __$$SimpleComicCharacterCopyWithImpl<_$SimpleComicCharacter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleComicCharacterToJson(
      this,
    );
  }
}

abstract class SimpleComicCharacter implements ComicCharacter {
  const factory SimpleComicCharacter(
      {@JsonKey(required: true, disallowNullValue: true) required final int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required final String detailUrl,
      @JsonKey(required: true, disallowNullValue: true)
      required final String name}) = _$SimpleComicCharacter;

  factory SimpleComicCharacter.fromJson(Map<String, dynamic> json) =
      _$SimpleComicCharacter.fromJson;

  @override
  @JsonKey(required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$SimpleComicCharacterCopyWith<_$SimpleComicCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}
