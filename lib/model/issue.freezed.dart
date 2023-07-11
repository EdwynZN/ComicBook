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
  switch (json['runtimeType']) {
    case 'reduced':
      return SimpleIssue.fromJson(json);
    case 'details':
      return DetailedIssue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Issue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Issue {
  @JsonKey(required: true, disallowNullValue: true, name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get dateAdded => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
  String get number => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)
        reduced,
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)
        details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)?
        details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)?
        details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimpleIssue value) reduced,
    required TResult Function(DetailedIssue value) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimpleIssue value)? reduced,
    TResult? Function(DetailedIssue value)? details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimpleIssue value)? reduced,
    TResult Function(DetailedIssue value)? details,
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
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      DateTime dateAdded,
      @JsonKey(name: 'name') String? name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      String number,
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
    Object? detailUrl = null,
    Object? dateAdded = null,
    Object? name = freezed,
    Object? number = null,
    Object? image = null,
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
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      DateTime dateAdded,
      @JsonKey(name: 'name') String? name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      String number,
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
    Object? detailUrl = null,
    Object? dateAdded = null,
    Object? name = freezed,
    Object? number = null,
    Object? image = null,
  }) {
    return _then(_$SimpleIssue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required this.detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required this.dateAdded,
      @JsonKey(name: 'name') this.name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      required this.number,
      @JsonKey(required: true, disallowNullValue: true) required this.image,
      final String? $type})
      : $type = $type ?? 'reduced',
        super._();

  factory _$SimpleIssue.fromJson(Map<String, dynamic> json) =>
      _$$SimpleIssueFromJson(json);

  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'id')
  final int id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  final String detailUrl;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  final DateTime dateAdded;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
  final String number;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  final ComicImage image;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Issue.reduced(id: $id, detailUrl: $detailUrl, dateAdded: $dateAdded, name: $name, number: $number, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleIssue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, detailUrl, dateAdded, name, number, image);

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
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)
        reduced,
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)
        details,
  }) {
    return reduced(id, detailUrl, dateAdded, name, number, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)?
        details,
  }) {
    return reduced?.call(id, detailUrl, dateAdded, name, number, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)?
        details,
    required TResult orElse(),
  }) {
    if (reduced != null) {
      return reduced(id, detailUrl, dateAdded, name, number, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimpleIssue value) reduced,
    required TResult Function(DetailedIssue value) details,
  }) {
    return reduced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimpleIssue value)? reduced,
    TResult? Function(DetailedIssue value)? details,
  }) {
    return reduced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimpleIssue value)? reduced,
    TResult Function(DetailedIssue value)? details,
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
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required final String detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required final DateTime dateAdded,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      required final String number,
      @JsonKey(required: true, disallowNullValue: true)
      required final ComicImage image}) = _$SimpleIssue;
  const SimpleIssue._() : super._();

  factory SimpleIssue.fromJson(Map<String, dynamic> json) =
      _$SimpleIssue.fromJson;

  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'id')
  int get id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get dateAdded;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
  String get number;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image;
  @override
  @JsonKey(ignore: true)
  _$$SimpleIssueCopyWith<_$SimpleIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailedIssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$DetailedIssueCopyWith(
          _$DetailedIssue value, $Res Function(_$DetailedIssue) then) =
      __$$DetailedIssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(required: true, disallowNullValue: true) int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      String detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
      DateTime coverDate,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      DateTime dateAdded,
      @JsonKey(
          required: true, disallowNullValue: true, name: 'date_last_updated')
      DateTime dateLastUpdated,
      @JsonKey(name: 'store_date') DateTime? storeDate,
      @JsonKey(required: true, disallowNullValue: true) ComicImage image,
      @JsonKey(required: true, disallowNullValue: true) Volume volume,
      @JsonKey(defaultValue: [], name: 'story_arc_credits')
      List<StoryArc> storyArcs,
      @JsonKey(defaultValue: [], name: 'character_credits')
      List<SimpleComicCharacter> characters,
      @JsonKey(defaultValue: [], name: 'location_credits')
      List<Location> locations,
      @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
      @JsonKey(defaultValue: [], name: 'person_credits') List<Person> people,
      @JsonKey(defaultValue: [], name: 'object_credits')
      List<ComicObject> comicObjects,
      @JsonKey(defaultValue: [], name: 'concept_credits')
      List<Concept> concepts,
      @JsonKey(name: 'name') String? name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      String number});

  @override
  $ComicImageCopyWith<$Res> get image;
  $VolumeCopyWith<$Res> get volume;
}

/// @nodoc
class __$$DetailedIssueCopyWithImpl<$Res>
    extends _$IssueCopyWithImpl<$Res, _$DetailedIssue>
    implements _$$DetailedIssueCopyWith<$Res> {
  __$$DetailedIssueCopyWithImpl(
      _$DetailedIssue _value, $Res Function(_$DetailedIssue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? detailUrl = null,
    Object? coverDate = null,
    Object? dateAdded = null,
    Object? dateLastUpdated = null,
    Object? storeDate = freezed,
    Object? image = null,
    Object? volume = null,
    Object? storyArcs = null,
    Object? characters = null,
    Object? locations = null,
    Object? teams = null,
    Object? people = null,
    Object? comicObjects = null,
    Object? concepts = null,
    Object? name = freezed,
    Object? number = null,
  }) {
    return _then(_$DetailedIssue(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      detailUrl: null == detailUrl
          ? _value.detailUrl
          : detailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverDate: null == coverDate
          ? _value.coverDate
          : coverDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateAdded: null == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateLastUpdated: null == dateLastUpdated
          ? _value.dateLastUpdated
          : dateLastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      storeDate: freezed == storeDate
          ? _value.storeDate
          : storeDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ComicImage,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as Volume,
      storyArcs: null == storyArcs
          ? _value._storyArcs
          : storyArcs // ignore: cast_nullable_to_non_nullable
              as List<StoryArc>,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<SimpleComicCharacter>,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      teams: null == teams
          ? _value._teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<Team>,
      people: null == people
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      comicObjects: null == comicObjects
          ? _value._comicObjects
          : comicObjects // ignore: cast_nullable_to_non_nullable
              as List<ComicObject>,
      concepts: null == concepts
          ? _value._concepts
          : concepts // ignore: cast_nullable_to_non_nullable
              as List<Concept>,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VolumeCopyWith<$Res> get volume {
    return $VolumeCopyWith<$Res>(_value.volume, (value) {
      return _then(_value.copyWith(volume: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedIssue extends DetailedIssue {
  const _$DetailedIssue(
      {@JsonKey(required: true, disallowNullValue: true) required this.id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required this.detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
      required this.coverDate,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required this.dateAdded,
      @JsonKey(
          required: true, disallowNullValue: true, name: 'date_last_updated')
      required this.dateLastUpdated,
      @JsonKey(name: 'store_date') this.storeDate,
      @JsonKey(required: true, disallowNullValue: true) required this.image,
      @JsonKey(required: true, disallowNullValue: true) required this.volume,
      @JsonKey(defaultValue: [], name: 'story_arc_credits')
      required final List<StoryArc> storyArcs,
      @JsonKey(defaultValue: [], name: 'character_credits')
      required final List<SimpleComicCharacter> characters,
      @JsonKey(defaultValue: [], name: 'location_credits')
      required final List<Location> locations,
      @JsonKey(defaultValue: [], name: 'team_credits')
      required final List<Team> teams,
      @JsonKey(defaultValue: [], name: 'person_credits')
      required final List<Person> people,
      @JsonKey(defaultValue: [], name: 'object_credits')
      required final List<ComicObject> comicObjects,
      @JsonKey(defaultValue: [], name: 'concept_credits')
      required final List<Concept> concepts,
      @JsonKey(name: 'name') this.name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      required this.number,
      final String? $type})
      : _storyArcs = storyArcs,
        _characters = characters,
        _locations = locations,
        _teams = teams,
        _people = people,
        _comicObjects = comicObjects,
        _concepts = concepts,
        $type = $type ?? 'details',
        super._();

  factory _$DetailedIssue.fromJson(Map<String, dynamic> json) =>
      _$$DetailedIssueFromJson(json);

  @override
  @JsonKey(required: true, disallowNullValue: true)
  final int id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  final String detailUrl;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
  final DateTime coverDate;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  final DateTime dateAdded;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_last_updated')
  final DateTime dateLastUpdated;
  @override
  @JsonKey(name: 'store_date')
  final DateTime? storeDate;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  final ComicImage image;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  final Volume volume;
  final List<StoryArc> _storyArcs;
  @override
  @JsonKey(defaultValue: [], name: 'story_arc_credits')
  List<StoryArc> get storyArcs {
    if (_storyArcs is EqualUnmodifiableListView) return _storyArcs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storyArcs);
  }

  final List<SimpleComicCharacter> _characters;
  @override
  @JsonKey(defaultValue: [], name: 'character_credits')
  List<SimpleComicCharacter> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<Location> _locations;
  @override
  @JsonKey(defaultValue: [], name: 'location_credits')
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<Team> _teams;
  @override
  @JsonKey(defaultValue: [], name: 'team_credits')
  List<Team> get teams {
    if (_teams is EqualUnmodifiableListView) return _teams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teams);
  }

  final List<Person> _people;
  @override
  @JsonKey(defaultValue: [], name: 'person_credits')
  List<Person> get people {
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  final List<ComicObject> _comicObjects;
  @override
  @JsonKey(defaultValue: [], name: 'object_credits')
  List<ComicObject> get comicObjects {
    if (_comicObjects is EqualUnmodifiableListView) return _comicObjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comicObjects);
  }

  final List<Concept> _concepts;
  @override
  @JsonKey(defaultValue: [], name: 'concept_credits')
  List<Concept> get concepts {
    if (_concepts is EqualUnmodifiableListView) return _concepts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_concepts);
  }

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
  final String number;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Issue.details(id: $id, detailUrl: $detailUrl, coverDate: $coverDate, dateAdded: $dateAdded, dateLastUpdated: $dateLastUpdated, storeDate: $storeDate, image: $image, volume: $volume, storyArcs: $storyArcs, characters: $characters, locations: $locations, teams: $teams, people: $people, comicObjects: $comicObjects, concepts: $concepts, name: $name, number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedIssue &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.detailUrl, detailUrl) ||
                other.detailUrl == detailUrl) &&
            (identical(other.coverDate, coverDate) ||
                other.coverDate == coverDate) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateLastUpdated, dateLastUpdated) ||
                other.dateLastUpdated == dateLastUpdated) &&
            (identical(other.storeDate, storeDate) ||
                other.storeDate == storeDate) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            const DeepCollectionEquality()
                .equals(other._storyArcs, _storyArcs) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality().equals(other._teams, _teams) &&
            const DeepCollectionEquality().equals(other._people, _people) &&
            const DeepCollectionEquality()
                .equals(other._comicObjects, _comicObjects) &&
            const DeepCollectionEquality().equals(other._concepts, _concepts) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      detailUrl,
      coverDate,
      dateAdded,
      dateLastUpdated,
      storeDate,
      image,
      volume,
      const DeepCollectionEquality().hash(_storyArcs),
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_teams),
      const DeepCollectionEquality().hash(_people),
      const DeepCollectionEquality().hash(_comicObjects),
      const DeepCollectionEquality().hash(_concepts),
      name,
      number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedIssueCopyWith<_$DetailedIssue> get copyWith =>
      __$$DetailedIssueCopyWithImpl<_$DetailedIssue>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)
        reduced,
    required TResult Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)
        details,
  }) {
    return details(
        id,
        detailUrl,
        coverDate,
        dateAdded,
        dateLastUpdated,
        storeDate,
        image,
        volume,
        storyArcs,
        characters,
        locations,
        teams,
        people,
        comicObjects,
        concepts,
        name,
        number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    TResult? Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)?
        details,
  }) {
    return details?.call(
        id,
        detailUrl,
        coverDate,
        dateAdded,
        dateLastUpdated,
        storeDate,
        image,
        volume,
        storyArcs,
        characters,
        locations,
        teams,
        people,
        comicObjects,
        concepts,
        name,
        number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true, name: 'id')
            int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image)?
        reduced,
    TResult Function(
            @JsonKey(required: true, disallowNullValue: true) int id,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'api_detail_url')
            String detailUrl,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'cover_date')
            DateTime coverDate,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'date_added')
            DateTime dateAdded,
            @JsonKey(
                required: true,
                disallowNullValue: true,
                name: 'date_last_updated')
            DateTime dateLastUpdated,
            @JsonKey(name: 'store_date') DateTime? storeDate,
            @JsonKey(required: true, disallowNullValue: true) ComicImage image,
            @JsonKey(required: true, disallowNullValue: true) Volume volume,
            @JsonKey(defaultValue: [], name: 'story_arc_credits')
            List<StoryArc> storyArcs,
            @JsonKey(defaultValue: [], name: 'character_credits')
            List<SimpleComicCharacter> characters,
            @JsonKey(defaultValue: [], name: 'location_credits')
            List<Location> locations,
            @JsonKey(defaultValue: [], name: 'team_credits') List<Team> teams,
            @JsonKey(defaultValue: [], name: 'person_credits')
            List<Person> people,
            @JsonKey(defaultValue: [], name: 'object_credits')
            List<ComicObject> comicObjects,
            @JsonKey(defaultValue: [], name: 'concept_credits')
            List<Concept> concepts,
            @JsonKey(name: 'name') String? name,
            @JsonKey(
                required: true, disallowNullValue: true, name: 'issue_number')
            String number)?
        details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(
          id,
          detailUrl,
          coverDate,
          dateAdded,
          dateLastUpdated,
          storeDate,
          image,
          volume,
          storyArcs,
          characters,
          locations,
          teams,
          people,
          comicObjects,
          concepts,
          name,
          number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimpleIssue value) reduced,
    required TResult Function(DetailedIssue value) details,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimpleIssue value)? reduced,
    TResult? Function(DetailedIssue value)? details,
  }) {
    return details?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimpleIssue value)? reduced,
    TResult Function(DetailedIssue value)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedIssueToJson(
      this,
    );
  }
}

abstract class DetailedIssue extends Issue {
  const factory DetailedIssue(
      {@JsonKey(required: true, disallowNullValue: true) required final int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
      required final String detailUrl,
      @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
      required final DateTime coverDate,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required final DateTime dateAdded,
      @JsonKey(
          required: true, disallowNullValue: true, name: 'date_last_updated')
      required final DateTime dateLastUpdated,
      @JsonKey(name: 'store_date') final DateTime? storeDate,
      @JsonKey(required: true, disallowNullValue: true)
      required final ComicImage image,
      @JsonKey(required: true, disallowNullValue: true)
      required final Volume volume,
      @JsonKey(defaultValue: [], name: 'story_arc_credits')
      required final List<StoryArc> storyArcs,
      @JsonKey(defaultValue: [], name: 'character_credits')
      required final List<SimpleComicCharacter> characters,
      @JsonKey(defaultValue: [], name: 'location_credits')
      required final List<Location> locations,
      @JsonKey(defaultValue: [], name: 'team_credits')
      required final List<Team> teams,
      @JsonKey(defaultValue: [], name: 'person_credits')
      required final List<Person> people,
      @JsonKey(defaultValue: [], name: 'object_credits')
      required final List<ComicObject> comicObjects,
      @JsonKey(defaultValue: [], name: 'concept_credits')
      required final List<Concept> concepts,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
      required final String number}) = _$DetailedIssue;
  const DetailedIssue._() : super._();

  factory DetailedIssue.fromJson(Map<String, dynamic> json) =
      _$DetailedIssue.fromJson;

  @override
  @JsonKey(required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'api_detail_url')
  String get detailUrl;
  @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
  DateTime get coverDate;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get dateAdded;
  @JsonKey(required: true, disallowNullValue: true, name: 'date_last_updated')
  DateTime get dateLastUpdated;
  @JsonKey(name: 'store_date')
  DateTime? get storeDate;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image;
  @JsonKey(required: true, disallowNullValue: true)
  Volume get volume;
  @JsonKey(defaultValue: [], name: 'story_arc_credits')
  List<StoryArc> get storyArcs;
  @JsonKey(defaultValue: [], name: 'character_credits')
  List<SimpleComicCharacter> get characters;
  @JsonKey(defaultValue: [], name: 'location_credits')
  List<Location> get locations;
  @JsonKey(defaultValue: [], name: 'team_credits')
  List<Team> get teams;
  @JsonKey(defaultValue: [], name: 'person_credits')
  List<Person> get people;
  @JsonKey(defaultValue: [], name: 'object_credits')
  List<ComicObject> get comicObjects;
  @JsonKey(defaultValue: [], name: 'concept_credits')
  List<Concept> get concepts;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'issue_number')
  String get number;
  @override
  @JsonKey(ignore: true)
  _$$DetailedIssueCopyWith<_$DetailedIssue> get copyWith =>
      throw _privateConstructorUsedError;
}
