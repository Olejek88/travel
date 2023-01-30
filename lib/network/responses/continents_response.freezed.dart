// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'continents_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContinentsResponse _$ContinentsResponseFromJson(Map<String, dynamic> json) {
  return _ContinentsResponse.fromJson(json);
}

/// @nodoc
mixin _$ContinentsResponse {
  List<Continent> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinentsResponseCopyWith<ContinentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinentsResponseCopyWith<$Res> {
  factory $ContinentsResponseCopyWith(
          ContinentsResponse value, $Res Function(ContinentsResponse) then) =
      _$ContinentsResponseCopyWithImpl<$Res, ContinentsResponse>;
  @useResult
  $Res call({List<Continent> result});
}

/// @nodoc
class _$ContinentsResponseCopyWithImpl<$Res, $Val extends ContinentsResponse>
    implements $ContinentsResponseCopyWith<$Res> {
  _$ContinentsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Continent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContinentsResponseCopyWith<$Res>
    implements $ContinentsResponseCopyWith<$Res> {
  factory _$$_ContinentsResponseCopyWith(_$_ContinentsResponse value,
          $Res Function(_$_ContinentsResponse) then) =
      __$$_ContinentsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Continent> result});
}

/// @nodoc
class __$$_ContinentsResponseCopyWithImpl<$Res>
    extends _$ContinentsResponseCopyWithImpl<$Res, _$_ContinentsResponse>
    implements _$$_ContinentsResponseCopyWith<$Res> {
  __$$_ContinentsResponseCopyWithImpl(
      _$_ContinentsResponse _value, $Res Function(_$_ContinentsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_ContinentsResponse(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Continent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContinentsResponse implements _ContinentsResponse {
  const _$_ContinentsResponse({required final List<Continent> result})
      : _result = result;

  factory _$_ContinentsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ContinentsResponseFromJson(json);

  final List<Continent> _result;
  @override
  List<Continent> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'ContinentsResponse(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContinentsResponse &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContinentsResponseCopyWith<_$_ContinentsResponse> get copyWith =>
      __$$_ContinentsResponseCopyWithImpl<_$_ContinentsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContinentsResponseToJson(
      this,
    );
  }
}

abstract class _ContinentsResponse implements ContinentsResponse {
  const factory _ContinentsResponse({required final List<Continent> result}) =
      _$_ContinentsResponse;

  factory _ContinentsResponse.fromJson(Map<String, dynamic> json) =
      _$_ContinentsResponse.fromJson;

  @override
  List<Continent> get result;
  @override
  @JsonKey(ignore: true)
  _$$_ContinentsResponseCopyWith<_$_ContinentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
