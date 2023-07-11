// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailsIssue _$DetailsIssueFromJson(Map<String, dynamic> json) {
  return _DetailsIssue.fromJson(json);
}

/// @nodoc
mixin _$DetailsIssue {
  String? get aliases => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
  DateTime get coverDate => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get dateAdded => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true, name: 'date_last_updated')
  DateTime get dateLastUpdated => throw _privateConstructorUsedError;
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], name: 'character_credits')
  List<SimpleComicCharacter> get character =>
      throw _privateConstructorUsedError;
  @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName)
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$_DetailsIssue implements _DetailsIssue {
  const _$_DetailsIssue(
      {this.aliases,
      @JsonKey(required: true, disallowNullValue: true) required this.id,
      @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
      required this.coverDate,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required this.dateAdded,
      @JsonKey(
          required: true, disallowNullValue: true, name: 'date_last_updated')
      required this.dateLastUpdated,
      @JsonKey(required: true, disallowNullValue: true) required this.image,
      @JsonKey(defaultValue: [], name: 'character_credits')
      required final List<SimpleComicCharacter> character,
      @JsonKey(
          required: true,
          disallowNullValue: true,
          name: 'issue_number',
          readValue: _concatName)
      required this.name})
      : _character = character;

  factory _$_DetailsIssue.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsIssueFromJson(json);

  @override
  final String? aliases;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  final int id;
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
  @JsonKey(required: true, disallowNullValue: true)
  final ComicImage image;
  final List<SimpleComicCharacter> _character;
  @override
  @JsonKey(defaultValue: [], name: 'character_credits')
  List<SimpleComicCharacter> get character {
    if (_character is EqualUnmodifiableListView) return _character;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_character);
  }

  @override
  @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName)
  final String name;

  @override
  String toString() {
    return 'DetailsIssue(aliases: $aliases, id: $id, coverDate: $coverDate, dateAdded: $dateAdded, dateLastUpdated: $dateLastUpdated, image: $image, character: $character, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsIssue &&
            (identical(other.aliases, aliases) || other.aliases == aliases) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coverDate, coverDate) ||
                other.coverDate == coverDate) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateLastUpdated, dateLastUpdated) ||
                other.dateLastUpdated == dateLastUpdated) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._character, _character) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aliases,
      id,
      coverDate,
      dateAdded,
      dateLastUpdated,
      image,
      const DeepCollectionEquality().hash(_character),
      name);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsIssueToJson(
      this,
    );
  }
}

abstract class _DetailsIssue implements DetailsIssue {
  const factory _DetailsIssue(
      {final String? aliases,
      @JsonKey(required: true, disallowNullValue: true) required final int id,
      @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
      required final DateTime coverDate,
      @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
      required final DateTime dateAdded,
      @JsonKey(
          required: true, disallowNullValue: true, name: 'date_last_updated')
      required final DateTime dateLastUpdated,
      @JsonKey(required: true, disallowNullValue: true)
      required final ComicImage image,
      @JsonKey(defaultValue: [], name: 'character_credits')
      required final List<SimpleComicCharacter> character,
      @JsonKey(
          required: true,
          disallowNullValue: true,
          name: 'issue_number',
          readValue: _concatName)
      required final String name}) = _$_DetailsIssue;

  factory _DetailsIssue.fromJson(Map<String, dynamic> json) =
      _$_DetailsIssue.fromJson;

  @override
  String? get aliases;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  int get id;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'cover_date')
  DateTime get coverDate;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_added')
  DateTime get dateAdded;
  @override
  @JsonKey(required: true, disallowNullValue: true, name: 'date_last_updated')
  DateTime get dateLastUpdated;
  @override
  @JsonKey(required: true, disallowNullValue: true)
  ComicImage get image;
  @override
  @JsonKey(defaultValue: [], name: 'character_credits')
  List<SimpleComicCharacter> get character;
  @override
  @JsonKey(
      required: true,
      disallowNullValue: true,
      name: 'issue_number',
      readValue: _concatName)
  String get name;
}
