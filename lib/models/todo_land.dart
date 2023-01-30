import 'package:freezed_annotation/freezed_annotation.dart';

import 'country.dart';
import 'land.dart';
import 'level.dart';

part 'todo_land.freezed.dart';
part 'todo_land.g.dart';

@freezed
class TodoLand with _$TodoLand {
  const factory TodoLand({
    required String uuid,
    required String title,
    required String? image,
    required Land land,
    required Level level,
    required double latitude,
    required double longitude,
    required String createdAt,
    required String changedAt,
  }) = _TodoLand;

  factory TodoLand.fromJson(Map<String, Object?> json) => _$TodoLandFromJson(json);
}
