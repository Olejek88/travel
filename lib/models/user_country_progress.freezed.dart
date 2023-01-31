// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_country_progress.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCountryProgress _$UserCountryProgressFromJson(Map<String, dynamic> json) {
  return _UserCountryProgress.fromJson(json);
}

/// @nodoc
mixin _$UserCountryProgress {
  String get uuid => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCountryProgressCopyWith<UserCountryProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCountryProgressCopyWith<$Res> {
  factory $UserCountryProgressCopyWith(
          UserCountryProgress value, $Res Function(UserCountryProgress) then) =
      _$UserCountryProgressCopyWithImpl<$Res, UserCountryProgress>;
  @useResult
  $Res call(
      {String uuid,
      Country country,
      User user,
      double progress,
      String createdAt,
      String changedAt});

  $CountryCopyWith<$Res> get country;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$UserCountryProgressCopyWithImpl<$Res, $Val extends UserCountryProgress>
    implements $UserCountryProgressCopyWith<$Res> {
  _$UserCountryProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? country = null,
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
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
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
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
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
abstract class _$$_UserCountryProgressCopyWith<$Res>
    implements $UserCountryProgressCopyWith<$Res> {
  factory _$$_UserCountryProgressCopyWith(_$_UserCountryProgress value,
          $Res Function(_$_UserCountryProgress) then) =
      __$$_UserCountryProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      Country country,
      User user,
      double progress,
      String createdAt,
      String changedAt});

  @override
  $CountryCopyWith<$Res> get country;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserCountryProgressCopyWithImpl<$Res>
    extends _$UserCountryProgressCopyWithImpl<$Res, _$_UserCountryProgress>
    implements _$$_UserCountryProgressCopyWith<$Res> {
  __$$_UserCountryProgressCopyWithImpl(_$_UserCountryProgress _value,
      $Res Function(_$_UserCountryProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? country = null,
    Object? user = null,
    Object? progress = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_UserCountryProgress(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
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
class _$_UserCountryProgress implements _UserCountryProgress {
  const _$_UserCountryProgress(
      {required this.uuid,
      required this.country,
      required this.user,
      required this.progress,
      required this.createdAt,
      required this.changedAt});

  factory _$_UserCountryProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserCountryProgressFromJson(json);

  @override
  final String uuid;
  @override
  final Country country;
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
    return 'UserCountryProgress(uuid: $uuid, country: $country, user: $user, progress: $progress, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCountryProgress &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.country, country) || other.country == country) &&
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
      runtimeType, uuid, country, user, progress, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCountryProgressCopyWith<_$_UserCountryProgress> get copyWith =>
      __$$_UserCountryProgressCopyWithImpl<_$_UserCountryProgress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCountryProgressToJson(
      this,
    );
  }
}

abstract class _UserCountryProgress implements UserCountryProgress {
  const factory _UserCountryProgress(
      {required final String uuid,
      required final Country country,
      required final User user,
      required final double progress,
      required final String createdAt,
      required final String changedAt}) = _$_UserCountryProgress;

  factory _UserCountryProgress.fromJson(Map<String, dynamic> json) =
      _$_UserCountryProgress.fromJson;

  @override
  String get uuid;
  @override
  Country get country;
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
  _$$_UserCountryProgressCopyWith<_$_UserCountryProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
