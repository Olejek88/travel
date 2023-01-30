// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      image: json['image'] as String?,
      continent: Continent.fromJson(json['continent'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      changedAt: json['changedAt'] as String,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'image': instance.image,
      'continent': instance.continent,
      'createdAt': instance.createdAt,
      'changedAt': instance.changedAt,
    };
