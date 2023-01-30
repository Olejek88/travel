import 'package:freezed_annotation/freezed_annotation.dart';

import 'continent.dart';
import 'country.dart';
import 'level.dart';

part 'todo_country.freezed.dart';
part 'todo_country.g.dart';

@freezed
class TodoCountry with _$TodoCountry {
  const factory TodoCountry({
    required String uuid,
    required String title,
    required String? image,
    required Country country,
    required Level level,
    required double latitude,
    required double longitude,
    required String createdAt,
    required String changedAt,
  }) = _TodoCountry;

  factory TodoCountry.fromJson(Map<String, Object?> json) => _$TodoCountryFromJson(json);
}
