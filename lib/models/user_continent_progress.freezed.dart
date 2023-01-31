// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_continent_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserContinentProgress _$UserContinentProgressFromJson(
    Map<String, dynamic> json) {
  return _UserContinentProgress.fromJson(json);
}

/// @nodoc
mixin _$UserContinentProgress {
  String get uuid => throw _privateConstructorUsedError;
  Continent get continent => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserContinentProgressCopyWith<UserContinentProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserContinentProgressCopyWith<$Res> {
  factory $UserContinentProgressCopyWith(UserContinentProgress value,
          $Res Function(UserContinentProgress) then) =
      _$UserContinentProgressCopyWithImpl<$Res, UserContinentProgress>;
  @useResult
  $Res call(
      {String uuid,
      Continent continent,
      User user,
      double progress,
      String createdAt,
      String changedAt});

  $ContinentCopyWith<$Res> get continent;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserContinentProgressCopyWithImpl<$Res,
        $Val extends UserContinentProgress>
    implements $UserContinentProgressCopyWith<$Res> {
  _$UserContinentProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? continent = null,
    Object? user = null,
    Object? progress = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      continent: null == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as Continent,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
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

  @override
  @pragma('vm:prefer-inline')
  $ContinentCopyWith<$Res> get continent {
    return $ContinentCopyWith<$Res>(_value.continent, (value) {
      return _then(_value.copyWith(continent: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserContinentProgressCopyWith<$Res>
    implements $UserContinentProgressCopyWith<$Res> {
  factory _$$_UserContinentProgressCopyWith(_$_UserContinentProgress value,
          $Res Function(_$_UserContinentProgress) then) =
      __$$_UserContinentProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      Continent continent,
      User user,
      double progress,
      String createdAt,
      String changedAt});

  @override
  $ContinentCopyWith<$Res> get continent;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserContinentProgressCopyWithImpl<$Res>
    extends _$UserContinentProgressCopyWithImpl<$Res, _$_UserContinentProgress>
    implements _$$_UserContinentProgressCopyWith<$Res> {
  __$$_UserContinentProgressCopyWithImpl(_$_UserContinentProgress _value,
      $Res Function(_$_UserContinentProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? continent = null,
    Object? user = null,
    Object? progress = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_UserContinentProgress(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      continent: null == continent
          ? _value.continent
          : continent // ignore: cast_nullable_to_non_nullable
              as Continent,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$_UserContinentProgress implements _UserContinentProgress {
  const _$_UserContinentProgress(
      {required this.uuid,
      required this.continent,
      required this.user,
      required this.progress,
      required this.createdAt,
      required this.changedAt});

  factory _$_UserContinentProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserContinentProgressFromJson(json);

  @override
  final String uuid;
  @override
  final Continent continent;
  @override
  final User user;
  @override
  final double progress;
  @override
  final String createdAt;
  @override
  final String changedAt;

  @override
  String toString() {
    return 'UserContinentProgress(uuid: $uuid, continent: $continent, user: $user, progress: $progress, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserContinentProgress &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.continent, continent) ||
                other.continent == continent) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, continent, user, progress, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserContinentProgressCopyWith<_$_UserContinentProgress> get copyWith =>
      __$$_UserContinentProgressCopyWithImpl<_$_UserContinentProgress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserContinentProgressToJson(
      this,
    );
  }
}

abstract class _UserContinentProgress implements UserContinentProgress {
  const factory _UserContinentProgress(
      {required final String uuid,
      required final Continent continent,
      required final User user,
      required final double progress,
      required final String createdAt,
      required final String changedAt}) = _$_UserContinentProgress;

  factory _UserContinentProgress.fromJson(Map<String, dynamic> json) =
      _$_UserContinentProgress.fromJson;

  @override
  String get uuid;
  @override
  Continent get continent;
  @override
  User get user;
  @override
  double get progress;
  @override
  String get createdAt;
  @override
  String get changedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserContinentProgressCopyWith<_$_UserContinentProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
