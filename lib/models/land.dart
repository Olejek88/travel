import 'package:freezed_annotation/freezed_annotation.dart';

import 'country.dart';

part 'land.freezed.dart';
part 'land.g.dart';

@freezed
class Land with _$Land {
  const factory Land({
    required String uuid,
    required String title,
    required Country country,
    required String? image,
    required String createdAt,
    required String changedAt,
  }) = _Land;

  factory Land.fromJson(Map<String, Object?> json) => _$LandFromJson(json);
}
