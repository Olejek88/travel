import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/models/todo_continent.dart';
import 'package:travel/models/todo_land.dart';
import 'package:travel/models/user.dart';
import 'level.dart';

part 'todo_land_completed.freezed.dart';
part 'todo_land_completed.g.dart';

@freezed
class TodoLandCompleted with _$TodoLandCompleted {
  const factory TodoLandCompleted({
    required String uuid,
    required String title,
    required String? image,
    required TodoLand todoLand,
    required User user,
    required double latitude,
    required double longitude,
    required int verified,
    required String createdAt,
    required String changedAt,
  }) = _TodoLandCompleted;

  factory TodoLandCompleted.fromJson(Map<String, Object?> json) => _$TodoLandCompletedFromJson(json);
}
