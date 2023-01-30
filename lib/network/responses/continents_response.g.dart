// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continents_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContinentsResponse _$$_ContinentsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ContinentsResponse(
      result: (json['result'] as List<dynamic>)
          .map((e) => Continent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContinentsResponseToJson(
        _$_ContinentsResponse instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
