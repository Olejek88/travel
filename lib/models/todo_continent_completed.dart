import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/models/todo_continent.dart';
import 'package:travel/models/user.dart';
import 'level.dart';

part 'todo_continent_completed.freezed.dart';
part 'todo_continent_completed.g.dart';

@freezed
class TodoContinentCompleted with _$TodoContinentCompleted {
  const factory TodoContinentCompleted({
    required String uuid,
    required String title,
    required String? image,
    required TodoContinent todoContinent,
    required User user,
    required double latitude,
    required double longitude,
    required int verified,
    required String createdAt,
    required String changedAt,
  }) = _TodoContinentCompleted;

  factory TodoContinentCompleted.fromJson(Map<String, Object?> json) => _$TodoContinentCompletedFromJson(json);
}
