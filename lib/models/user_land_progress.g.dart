// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_land_progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLandProgress _$$_UserLandProgressFromJson(Map<String, dynamic> json) =>
    _$_UserLandProgress(
      uuid: json['uuid'] as String,
      land: Land.fromJson(json['land'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
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
