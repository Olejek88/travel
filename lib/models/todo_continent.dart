import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';

part 'todo_continent.freezed.dart';
part 'todo_continent.g.dart';

@freezed
class TodoContinent with _$TodoContinent {
  const factory TodoContinent({
    required String uuid,
    required String title,
    required String? image,
    required Continent continent,
    required Level level,
    required double latitude,
    required double longitude,
    required String createdAt,
    required String changedAt,
  }) = _TodoContinent;

  factory TodoContinent.fromJson(Map<String, Object?> json) => _$TodoContinentFromJson(json);
}
