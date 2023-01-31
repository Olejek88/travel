// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_land_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLandProgress _$UserLandProgressFromJson(Map<String, dynamic> json) {
  return _UserLandProgress.fromJson(json);
}

/// @nodoc
mixin _$UserLandProgress {
  String get uuid => throw _privateConstructorUsedError;
  Land get land => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLandProgressCopyWith<UserLandProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLandProgressCopyWith<$Res> {
  factory $UserLandProgressCopyWith(
          UserLandProgress value, $Res Function(UserLandProgress) then) =
      _$UserLandProgressCopyWithImpl<$Res, UserLandProgress>;
  @useResult
  $Res call(
      {String uuid,
      Land land,
      User user,
      double progress,
      String createdAt,
      String changedAt});

  $LandCopyWith<$Res> get land;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserLandProgressCopyWithImpl<$Res, $Val extends UserLandProgress>
    implements $UserLandProgressCopyWith<$Res> {
  _$UserLandProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? land = null,
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
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
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
  $LandCopyWith<$Res> get land {
    return $LandCopyWith<$Res>(_value.land, (value) {
      return _then(_value.copyWith(land: value) as $Val);
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
abstract class _$$_UserLandProgressCopyWith<$Res>
    implements $UserLandProgressCopyWith<$Res> {
  factory _$$_UserLandProgressCopyWith(
          _$_UserLandProgress value, $Res Function(_$_UserLandProgress) then) =
      __$$_UserLandProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      Land land,
      User user,
      double progress,
      String createdAt,
      String changedAt});

  @override
  $LandCopyWith<$Res> get land;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserLandProgressCopyWithImpl<$Res>
    extends _$UserLandProgressCopyWithImpl<$Res, _$_UserLandProgress>
    implements _$$_UserLandProgressCopyWith<$Res> {
  __$$_UserLandProgressCopyWithImpl(
      _$_UserLandProgress _value, $Res Function(_$_UserLandProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? land = null,
    Object? user = null,
    Object? progress = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_UserLandProgress(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
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
class _$_UserLandProgress implements _UserLandProgress {
  const _$_UserLandProgress(
      {required this.uuid,
      required this.land,
      required this.user,
      required this.progress,
      required this.createdAt,
      required this.changedAt});

  factory _$_UserLandProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserLandProgressFromJson(json);

  @override
  final String uuid;
  @override
  final Land land;
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
    return 'UserLandProgress(uuid: $uuid, land: $land, user: $user, progress: $progress, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLandProgress &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.land, land) || other.land == land) &&
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
      runtimeType, uuid, land, user, progress, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserLandProgressCopyWith<_$_UserLandProgress> get copyWith =>
      __$$_UserLandProgressCopyWithImpl<_$_UserLandProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLandProgressToJson(
      this,
    );
  }
}

abstract class _UserLandProgress implements UserLandProgress {
  const factory _UserLandProgress(
      {required final String uuid,
      required final Land land,
      required final User user,
      required final double progress,
      required final String createdAt,
      required final String changedAt}) = _$_UserLandProgress;

  factory _UserLandProgress.fromJson(Map<String, dynamic> json) =
      _$_UserLandProgress.fromJson;

  @override
  String get uuid;
  @override
  Land get land;
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
  _$$_UserLandProgressCopyWith<_$_UserLandProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
