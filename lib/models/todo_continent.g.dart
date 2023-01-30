// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_continent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoContinent _$$_TodoContinentFromJson(Map<String, dynamic> json) =>
    _$_TodoContinent(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      continent: Continent.fromJson(json['continent'] as Map<String, dynamic>),
      level: Level.fromJson(json['level'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_TodoContinentToJson(_$_TodoContinent instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'continent': instance.continent,
      'level': instance.level,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
