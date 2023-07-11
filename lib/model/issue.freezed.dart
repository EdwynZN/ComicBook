// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return SimpleIssue.fromJson(json);
}

/// @nodoc
mixin _$Issue {
  @JsonKey(required: true, disallowNullValue: true, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime date,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'issue_number',
                readValue: _concatName)
            String name,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)
        reduced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime date,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'issue_number',
                readValue: _concatName)
            String name,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime date,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'issue_number',
                readValue: _concatName)
            String name,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimpleIssue value) reduced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimpleIssue value)? reduced,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimpleIssue value)? reduced,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res, Issue>;
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true, name: 'id') int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      DateTime date,
      @JsonKey(
          required: true,
          disallowNullValue: true,
          name: 'issue_number',
          readValue: _concatName)
      String name,
      @JsonKey(required: true, disallowNullValue: true) ComicImage image});

  $ComicImageCopyWith<$Res> get image;
}

/// @nodoc
class _$IssueCopyWithImpl<$Res, $Val extends Issue>
    implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ComicImage,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ComicImageCopyWith<$Res> get image {
    return $ComicImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SimpleIssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$SimpleIssueCopyWith(
          _$SimpleIssue value, $Res Function(_$SimpleIssue) then) =
      __$$SimpleIssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true, name: 'id') int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      DateTime date,
      @JsonKey(
          required: true,
          disallowNullValue: true,
          name: 'issue_number',
          readValue: _concatName)
      String name,
      @JsonKey(required: true, disallowNullValue: true) ComicImage image});

  @override
  $ComicImageCopyWith<$Res> get image;
}

/// @nodoc
class __$$SimpleIssueCopyWithImpl<$Res>
    extends _$IssueCopyWithImpl<$Res, _$SimpleIssue>
    implements _$$SimpleIssueCopyWith<$Res> {
  __$$SimpleIssueCopyWithImpl(
      _$SimpleIssue _value, $Res Function(_$SimpleIssue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$SimpleIssue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ComicImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleIssue extends SimpleIssue {
  const _$SimpleIssue(
      {@JsonKey(required: true, disallowNullValue: true, name: 'id')
      required this.id,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required this.date,
      @JsonKey(
          required: true,
          disallowNullValue: true,
          name: 'issue_number',
          readValue: _concatName)
      required this.name,
      @JsonKey(required: true, disallowNullValue: true) required this.image})
      : super._();

  factory _$SimpleIssue.fromJson(Map<String, dynamic> json) =>
      _$$SimpleIssueFromJson(json);

  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'id')
  final int id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  final DateTime date;
  @override
  @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName)
  final String name;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  final ComicImage image;

  @override
  String toString() {
    return 'Issue.reduced(id: $id, date: $date, name: $name, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleIssue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, date, name, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleIssueCopyWith<_$SimpleIssue> get copyWith =>
      __$$SimpleIssueCopyWithImpl<_$SimpleIssue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime date,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'issue_number',
                readValue: _concatName)
            String name,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)
        reduced,
  }) {
    return reduced(id, date, name, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime date,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'issue_number',
                readValue: _concatName)
            String name,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
  }) {
    return reduced?.call(id, date, name, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime date,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'issue_number',
                readValue: _concatName)
            String name,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    required TResult orElse(),
  }) {
    if (reduced != null) {
      return reduced(id, date, name, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimpleIssue value) reduced,
  }) {
    return reduced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimpleIssue value)? reduced,
  }) {
    return reduced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimpleIssue value)? reduced,
    required TResult orElse(),
  }) {
    if (reduced != null) {
      return reduced(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleIssueToJson(
      this,
    );
  }
}

abstract class SimpleIssue extends Issue {
  const factory SimpleIssue(
      {@JsonKey(required: true, disallowNullValue: true, name: 'id')
      required final int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required final DateTime date,
      @JsonKey(
          required: true,
          disallowNullValue: true,
          name: 'issue_number',
          readValue: _concatName)
      required final String name,
      @JsonKey(required: true, disallowNullValue: true)
      required final ComicImage image}) = _$SimpleIssue;
  const SimpleIssue._() : super._();

  factory SimpleIssue.fromJson(Map<String, dynamic> json) =
      _$SimpleIssue.fromJson;

  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'id')
  int get id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get date;
  @override
  @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName)
  String get name;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image;
  @override
  @JsonKey(ignore: true)
  _$$SimpleIssueCopyWith<_$SimpleIssue> get copyWith =>
      throw _privateConstructorUsedError;
}
