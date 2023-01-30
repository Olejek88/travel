// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_continent_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserContinentProgress _$$_UserContinentProgressFromJson(
        Map<String, dynamic> json) =>
    _$_UserContinentProgress(
      uuid: json['uuid'] as String,
      continent: Continent.fromJson(json['continent'] as Map<String, dynamic>),
      user: json['user'],
      progress: (json['progress'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_UserContinentProgressToJson(
        _$_UserContinentProgress instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'continent': instance.continent,
      'user': instance.user,
      'progress': instance.progress,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
