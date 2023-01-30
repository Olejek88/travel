// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_country_completed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoCountryCompleted _$$_TodoCountryCompletedFromJson(
        Map<String, dynamic> json) =>
    _$_TodoCountryCompleted(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      todoCountry:
          TodoCountry.fromJson(json['todoCountry'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      verified: json['verified'] as int,
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_TodoCountryCompletedToJson(
        _$_TodoCountryCompleted instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'todoCountry': instance.todoCountry,
      'user': instance.user,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'verified': instance.verified,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
