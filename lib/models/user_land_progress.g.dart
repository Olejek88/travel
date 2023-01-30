// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_land_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLandProgress _$$_UserLandProgressFromJson(Map<String, dynamic> json) =>
    _$_UserLandProgress(
      uuid: json['uuid'] as String,
      land: json['land'],
      user: json['user'],
      progress: (json['progress'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_UserLandProgressToJson(_$_UserLandProgress instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'land': instance.land,
      'user': instance.user,
      'progress': instance.progress,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
