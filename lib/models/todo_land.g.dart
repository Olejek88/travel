// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_land.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoLand _$$_TodoLandFromJson(Map<String, dynamic> json) => _$_TodoLand(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      land: Land.fromJson(json['land'] as Map<String, dynamic>),
      level: Level.fromJson(json['level'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_TodoLandToJson(_$_TodoLand instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'land': instance.land,
      'level': instance.level,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
