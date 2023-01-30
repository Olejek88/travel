// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_continent_completed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoContinentCompleted _$$_TodoContinentCompletedFromJson(
        Map<String, dynamic> json) =>
    _$_TodoContinentCompleted(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      todoContinent:
          TodoContinent.fromJson(json['todoContinent'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      verified: json['verified'] as int,
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_TodoContinentCompletedToJson(
        _$_TodoContinentCompleted instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'todoContinent': instance.todoContinent,
      'user': instance.user,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'verified': instance.verified,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
