import 'package:freezed_annotation/freezed_annotation.dart';

import 'land.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    required String email,
    required String? image,
    required Land land,
    required double rating,
    required double verifiedRating,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
