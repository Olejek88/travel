// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Level _$LevelFromJson(Map<String, dynamic> json) {
  return _Level.fromJson(json);
}

/// @nodoc
mixin _$Level {
  String get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LevelCopyWith<Level> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LevelCopyWith<$Res> {
  factory $LevelCopyWith(Level value, $Res Function(Level) then) =
      _$LevelCopyWithImpl<$Res, Level>;
  @useResult
  $Res call({String uuid, String title, String createdAt, String changedAt});
}

/// @nodoc
class _$LevelCopyWithImpl<$Res, $Val extends Level>
    implements $LevelCopyWith<$Res> {
  _$LevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LevelCopyWith<$Res> implements $LevelCopyWith<$Res> {
  factory _$$_LevelCopyWith(_$_Level value, $Res Function(_$_Level) then) =
      __$$_LevelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String title, String createdAt, String changedAt});
}

/// @nodoc
class __$$_LevelCopyWithImpl<$Res> extends _$LevelCopyWithImpl<$Res, _$_Level>
    implements _$$_LevelCopyWith<$Res> {
  __$$_LevelCopyWithImpl(_$_Level _value, $Res Function(_$_Level) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_Level(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Level implements _Level {
  const _$_Level(
      {required this.uuid,
      required this.title,
      required this.createdAt,
      required this.changedAt});

  factory _$_Level.fromJson(Map<String, dynamic> json) =>
      _$$_LevelFromJson(json);

  @override
  final String uuid;
  @override
  final String title;
  @override
  final String createdAt;
  @override
  final String changedAt;

  @override
  String toString() {
    return 'Level(uuid: $uuid, title: $title, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Level &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, title, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LevelCopyWith<_$_Level> get copyWith =>
      __$$_LevelCopyWithImpl<_$_Level>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LevelToJson(
      this,
    );
  }
}

abstract class _Level implements Level {
  const factory _Level(
      {required final String uuid,
      required final String title,
      required final String createdAt,
      required final String changedAt}) = _$_Level;

  factory _Level.fromJson(Map<String, dynamic> json) = _$_Level.fromJson;

  @override
  String get uuid;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  String get changedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LevelCopyWith<_$_Level> get copyWith =>
      throw _privateConstructorUsedError;
}
