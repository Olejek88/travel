// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Continent _$$_ContinentFromJson(Map<String, dynamic> json) => _$_Continent(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_ContinentToJson(_$_Continent instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
