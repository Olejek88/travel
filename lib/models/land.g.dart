// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'land.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Land _$$_LandFromJson(Map<String, dynamic> json) => _$_Land(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_LandToJson(_$_Land instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'country': instance.country,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
