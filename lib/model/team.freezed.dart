// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Team _$TeamFromJson(Map<String, dynamic> json) {
  return _Team.fromJson(json);
}

/// @nodoc
mixin _$Team {
  @JsonKey(required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeamCopyWith<Team> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeamCopyWith<$Res> {
  factory $TeamCopyWith(Team value, $Res Function(Team) then) =
      _$TeamCopyWithImpl<$Res, Team>;
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true) String name});
}

/// @nodoc
class _$TeamCopyWithImpl<$Res, $Val extends Team>
    implements $TeamCopyWith<$Res> {
  _$TeamCopyWithImpl(this._value, this._then);

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
abstract class _$$_TeamCopyWith<$Res> implements $TeamCopyWith<$Res> {
  factory _$$_TeamCopyWith(_$_Team value, $Res Function(_$_Team) then) =
      __$$_TeamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true) String name});
}

/// @nodoc
class __$$_TeamCopyWithImpl<$Res> extends _$TeamCopyWithImpl<$Res, _$_Team>
    implements _$$_TeamCopyWith<$Res> {
  __$$_TeamCopyWithImpl(_$_Team _value, $Res Function(_$_Team) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detailUrl = null,
    Object? name = null,
  }) {
    return _then(_$_Team(
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
class _$_Team implements _Team {
  const _$_Team(
      {@JsonKey(required: true, disallowNullValue: true) required this.id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required this.detailUrl,
      @JsonKey(required: true, disallowNullValue: true) required this.name});

  factory _$_Team.fromJson(Map<String, dynamic> json) => _$$_TeamFromJson(json);

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
    return 'Team(id: $id, detailUrl: $detailUrl, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Team &&
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
  _$$_TeamCopyWith<_$_Team> get copyWith =>
      __$$_TeamCopyWithImpl<_$_Team>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeamToJson(
      this,
    );
  }
}

abstract class _Team implements Team {
  const factory _Team(
      {@JsonKey(required: true, disallowNullValue: true) required final int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required final String detailUrl,
      @JsonKey(required: true, disallowNullValue: true)
      required final String name}) = _$_Team;

  factory _Team.fromJson(Map<String, dynamic> json) = _$_Team.fromJson;

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
  _$$_TeamCopyWith<_$_Team> get copyWith => throw _privateConstructorUsedError;
}
