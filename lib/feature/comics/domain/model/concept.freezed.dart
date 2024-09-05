// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'concept.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Concept _$ConceptFromJson(Map<String, dynamic> json) {
  return _Concept.fromJson(json);
}

/// @nodoc
mixin _$Concept {
  @JsonKey(required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConceptCopyWith<Concept> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConceptCopyWith<$Res> {
  factory $ConceptCopyWith(Concept value, $Res Function(Concept) then) =
      _$ConceptCopyWithImpl<$Res, Concept>;
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true) String name});
}

/// @nodoc
class _$ConceptCopyWithImpl<$Res, $Val extends Concept>
    implements $ConceptCopyWith<$Res> {
  _$ConceptCopyWithImpl(this._value, this._then);

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
abstract class _$$_ConceptCopyWith<$Res> implements $ConceptCopyWith<$Res> {
  factory _$$_ConceptCopyWith(
          _$_Concept value, $Res Function(_$_Concept) then) =
      __$$_ConceptCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true) String name});
}

/// @nodoc
class __$$_ConceptCopyWithImpl<$Res>
    extends _$ConceptCopyWithImpl<$Res, _$_Concept>
    implements _$$_ConceptCopyWith<$Res> {
  __$$_ConceptCopyWithImpl(_$_Concept _value, $Res Function(_$_Concept) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detailUrl = null,
    Object? name = null,
  }) {
    return _then(_$_Concept(
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
class _$_Concept implements _Concept {
  const _$_Concept(
      {@JsonKey(required: true, disallowNullValue: true) required this.id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required this.detailUrl,
      @JsonKey(required: true, disallowNullValue: true) required this.name});

  factory _$_Concept.fromJson(Map<String, dynamic> json) =>
      _$$_ConceptFromJson(json);

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
    return 'Concept(id: $id, detailUrl: $detailUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Concept &&
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
  _$$_ConceptCopyWith<_$_Concept> get copyWith =>
      __$$_ConceptCopyWithImpl<_$_Concept>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConceptToJson(
      this,
    );
  }
}

abstract class _Concept implements Concept {
  const factory _Concept(
      {@JsonKey(required: true, disallowNullValue: true) required final int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required final String detailUrl,
      @JsonKey(required: true, disallowNullValue: true)
      required final String name}) = _$_Concept;

  factory _Concept.fromJson(Map<String, dynamic> json) = _$_Concept.fromJson;

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
  _$$_ConceptCopyWith<_$_Concept> get copyWith =>
      throw _privateConstructorUsedError;
}
