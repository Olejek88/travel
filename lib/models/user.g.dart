// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      username: json['username'] as String,
      email: json['email'] as String,
      image: json['image'] as String?,
      land: Land.fromJson(json['land'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      verifiedRating: (json['verifiedRating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'image': instance.image,
      'land': instance.land,
      'rating': instance.rating,
      'verifiedRating': instance.verifiedRating,
    };
