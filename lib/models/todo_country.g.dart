// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoCountry _$$_TodoCountryFromJson(Map<String, dynamic> json) =>
    _$_TodoCountry(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      level: Level.fromJson(json['level'] as Map<String, dynamic>),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_TodoCountryToJson(_$_TodoCountry instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'country': instance.country,
      'level': instance.level,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
