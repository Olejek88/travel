// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'land.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Land _$LandFromJson(Map<String, dynamic> json) {
  return _Land.fromJson(json);
}

/// @nodoc
mixin _$Land {
  String get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Country get country => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LandCopyWith<Land> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandCopyWith<$Res> {
  factory $LandCopyWith(Land value, $Res Function(Land) then) =
      _$LandCopyWithImpl<$Res, Land>;
  @useResult
  $Res call(
      {String uuid,
      String title,
      Country country,
      String? image,
      String createdAt,
      String changedAt});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class _$LandCopyWithImpl<$Res, $Val extends Land>
    implements $LandCopyWith<$Res> {
  _$LandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? country = null,
    Object? image = freezed,
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
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
}

/// @nodoc
abstract class _$$_LandCopyWith<$Res> implements $LandCopyWith<$Res> {
  factory _$$_LandCopyWith(_$_Land value, $Res Function(_$_Land) then) =
      __$$_LandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String title,
      Country country,
      String? image,
      String createdAt,
      String changedAt});

  @override
  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$$_LandCopyWithImpl<$Res> extends _$LandCopyWithImpl<$Res, _$_Land>
    implements _$$_LandCopyWith<$Res> {
  __$$_LandCopyWithImpl(_$_Land _value, $Res Function(_$_Land) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? country = null,
    Object? image = freezed,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_Land(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Land implements _Land {
  const _$_Land(
      {required this.uuid,
      required this.title,
      required this.country,
      required this.image,
      required this.createdAt,
      required this.changedAt});

  factory _$_Land.fromJson(Map<String, dynamic> json) => _$$_LandFromJson(json);

  @override
  final String uuid;
  @override
  final String title;
  @override
  final Country country;
  @override
  final String? image;
  @override
  final String createdAt;
  @override
  final String changedAt;

  @override
  String toString() {
    return 'Land(uuid: $uuid, title: $title, country: $country, image: $image, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Land &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, title, country, image, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandCopyWith<_$_Land> get copyWith =>
      __$$_LandCopyWithImpl<_$_Land>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LandToJson(
      this,
    );
  }
}

abstract class _Land implements Land {
  const factory _Land(
      {required final String uuid,
      required final String title,
      required final Country country,
      required final String? image,
      required final String createdAt,
      required final String changedAt}) = _$_Land;

  factory _Land.fromJson(Map<String, dynamic> json) = _$_Land.fromJson;

  @override
  String get uuid;
  @override
  String get title;
  @override
  Country get country;
  @override
  String? get image;
  @override
  String get createdAt;
  @override
  String get changedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LandCopyWith<_$_Land> get copyWith => throw _privateConstructorUsedError;
}
