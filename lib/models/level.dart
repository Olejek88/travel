import 'package:freezed_annotation/freezed_annotation.dart';

part 'level.freezed.dart';
part 'level.g.dart';

@freezed
class Level with _$Level {
  const factory Level({
    required String uuid,
    required String title,
    required String createdAt,
    required String changedAt,
  }) = _Level;

  factory Level.fromJson(Map<String, Object?> json) => _$LevelFromJson(json);
}
