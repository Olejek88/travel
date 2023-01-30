// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_country_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCountryProgress _$$_UserCountryProgressFromJson(
        Map<String, dynamic> json) =>
    _$_UserCountryProgress(
      uuid: json['uuid'] as String,
      country: json['country'],
      user: json['user'],
      progress: (json['progress'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_UserCountryProgressToJson(
        _$_UserCountryProgress instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'country': instance.country,
      'user': instance.user,
      'progress': instance.progress,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
