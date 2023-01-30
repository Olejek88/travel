// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_land_completed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoLandCompleted _$$_TodoLandCompletedFromJson(Map<String, dynamic> json) =>
    _$_TodoLandCompleted(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      todoLand: TodoLand.fromJson(json['todoLand'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      verified: json['verified'] as int,
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_TodoLandCompletedToJson(
        _$_TodoLandCompleted instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'todoLand': instance.todoLand,
      'user': instance.user,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'verified': instance.verified,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
