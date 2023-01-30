// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'continent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Continent _$ContinentFromJson(Map<String, dynamic> json) {
  return _Continent.fromJson(json);
}

/// @nodoc
mixin _$Continent {
  String get uuid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get changedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinentCopyWith<Continent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentCopyWith<$Res> {
  factory $ContinentCopyWith(Continent value, $Res Function(Continent) then) =
      _$ContinentCopyWithImpl<$Res, Continent>;
  @useResult
  $Res call(
      {String uuid,
      String title,
      String? image,
      String createdAt,
      String changedAt});
}

/// @nodoc
class _$ContinentCopyWithImpl<$Res, $Val extends Continent>
    implements $ContinentCopyWith<$Res> {
  _$ContinentCopyWithImpl(this._value, this._then);

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
abstract class _$$_ContinentCopyWith<$Res> implements $ContinentCopyWith<$Res> {
  factory _$$_ContinentCopyWith(
          _$_Continent value, $Res Function(_$_Continent) then) =
      __$$_ContinentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String title,
      String? image,
      String createdAt,
      String changedAt});
}

/// @nodoc
class __$$_ContinentCopyWithImpl<$Res>
    extends _$ContinentCopyWithImpl<$Res, _$_Continent>
    implements _$$_ContinentCopyWith<$Res> {
  __$$_ContinentCopyWithImpl(
      _$_Continent _value, $Res Function(_$_Continent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? image = freezed,
    Object? createdAt = null,
    Object? changedAt = null,
  }) {
    return _then(_$_Continent(
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
class _$_Continent implements _Continent {
  const _$_Continent(
      {required this.uuid,
      required this.title,
      required this.image,
      required this.createdAt,
      required this.changedAt});

  factory _$_Continent.fromJson(Map<String, dynamic> json) =>
      _$$_ContinentFromJson(json);

  @override
  final String uuid;
  @override
  final String title;
  @override
  final String? image;
  @override
  final String createdAt;
  @override
  final String changedAt;

  @override
  String toString() {
    return 'Continent(uuid: $uuid, title: $title, image: $image, createdAt: $createdAt, changedAt: $changedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Continent &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, title, image, createdAt, changedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContinentCopyWith<_$_Continent> get copyWith =>
      __$$_ContinentCopyWithImpl<_$_Continent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContinentToJson(
      this,
    );
  }
}

abstract class _Continent implements Continent {
  const factory _Continent(
      {required final String uuid,
      required final String title,
      required final String? image,
      required final String createdAt,
      required final String changedAt}) = _$_Continent;

  factory _Continent.fromJson(Map<String, dynamic> json) =
      _$_Continent.fromJson;

  @override
  String get uuid;
  @override
  String get title;
  @override
  String? get image;
  @override
  String get createdAt;
  @override
  String get changedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContinentCopyWith<_$_Continent> get copyWith =>
      throw _privateConstructorUsedError;
}
