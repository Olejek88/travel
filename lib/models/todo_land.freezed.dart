// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_land.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoLand _$TodoLandFromJson(Map<String, dynamic> json) {
  return _TodoLand.fromJson(json);
}

/// @nodoc
mixin _$TodoLand {
  String get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  Land get land => throw _privateConstructorUsedError;
  Level get level => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoLandCopyWith<TodoLand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoLandCopyWith<$Res> {
  factory $TodoLandCopyWith(TodoLand value, $Res Function(TodoLand) then) =
      _$TodoLandCopyWithImpl<$Res, TodoLand>;
  @useResult
  $Res call(
      {String uuid,
      String title,
      String? image,
      Land land,
      Level level,
      double latitude,
      double longitude,
      String createdAt,
      String changedAt});

  $LandCopyWith<$Res> get land;
  $LevelCopyWith<$Res> get level;
}

/// @nodoc
class _$TodoLandCopyWithImpl<$Res, $Val extends TodoLand>
    implements $TodoLandCopyWith<$Res> {
  _$TodoLandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? image = freezed,
    Object? land = null,
    Object? level = null,
    Object? latitude = null,
    Object? longitude = null,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
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
  $LevelCopyWith<$Res> get level {
    return $LevelCopyWith<$Res>(_value.level, (value) {
      return _then(_value.copyWith(level: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TodoLandCopyWith<$Res> implements $TodoLandCopyWith<$Res> {
  factory _$$_TodoLandCopyWith(
          _$_TodoLand value, $Res Function(_$_TodoLand) then) =
      __$$_TodoLandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String title,
      String? image,
      Land land,
      Level level,
      double latitude,
      double longitude,
      String createdAt,
      String changedAt});

  @override
  $LandCopyWith<$Res> get land;
  @override
  $LevelCopyWith<$Res> get level;
}

/// @nodoc
class __$$_TodoLandCopyWithImpl<$Res>
    extends _$TodoLandCopyWithImpl<$Res, _$_TodoLand>
    implements _$$_TodoLandCopyWith<$Res> {
  __$$_TodoLandCopyWithImpl(
      _$_TodoLand _value, $Res Function(_$_TodoLand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? image = freezed,
    Object? land = null,
    Object? level = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_TodoLand(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      land: null == land
          ? _value.land
          : land // ignore: cast_nullable_to_non_nullable
              as Land,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
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
class _$_TodoLand implements _TodoLand {
  const _$_TodoLand(
      {required this.uuid,
      required this.title,
      required this.image,
      required this.land,
      required this.level,
      required this.latitude,
      required this.longitude,
      required this.createdAt,
      required this.changedAt});

  factory _$_TodoLand.fromJson(Map<String, dynamic> json) =>
      _$$_TodoLandFromJson(json);

  @override
  final String uuid;
  @override
  final String title;
  @override
  final String? image;
  @override
  final Land land;
  @override
  final Level level;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String createdAt;
  @override
  final String changedAt;

  @override
  String toString() {
    return 'TodoLand(uuid: $uuid, title: $title, image: $image, land: $land, level: $level, latitude: $latitude, longitude: $longitude, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoLand &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.land, land) || other.land == land) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, title, image, land, level,
      latitude, longitude, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoLandCopyWith<_$_TodoLand> get copyWith =>
      __$$_TodoLandCopyWithImpl<_$_TodoLand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoLandToJson(
      this,
    );
  }
}

abstract class _TodoLand implements TodoLand {
  const factory _TodoLand(
      {required final String uuid,
      required final String title,
      required final String? image,
      required final Land land,
      required final Level level,
      required final double latitude,
      required final double longitude,
      required final String createdAt,
      required final String changedAt}) = _$_TodoLand;

  factory _TodoLand.fromJson(Map<String, dynamic> json) = _$_TodoLand.fromJson;

  @override
  String get uuid;
  @override
  String get title;
  @override
  String? get image;
  @override
  Land get land;
  @override
  Level get level;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get createdAt;
  @override
  String get changedAt;
  @override
  @JsonKey(ignore: true)
  _$$_TodoLandCopyWith<_$_TodoLand> get copyWith =>
      throw _privateConstructorUsedError;
}
