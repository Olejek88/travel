import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/models/todo_continent.dart';
import 'package:travel/models/todo_country.dart';
import 'package:travel/models/user.dart';
import 'level.dart';

part 'todo_country_completed.freezed.dart';
part 'todo_country_completed.g.dart';

@freezed
class TodoCountryCompleted with _$TodoCountryCompleted {
  const factory TodoCountryCompleted({
    required String uuid,
    required String title,
    required String? image,
    required TodoCountry todoCountry,
    required User user,
    required double latitude,
    required double longitude,
    required int verified,
    required String createdAt,
    required String changedAt,
  }) = _TodoCountryCompleted;

  factory TodoCountryCompleted.fromJson(Map<String, Object?> json) => _$TodoCountryCompletedFromJson(json);
}
