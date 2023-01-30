import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/models/user.dart';
import 'level.dart';

part 'user_continent_progress.freezed.dart';
part 'user_continent_progress.g.dart';

@freezed
class UserContinentProgress with _$UserContinentProgress {
  const factory UserContinentProgress({
    required String uuid,
    required Continent continent,
    required User user,
    required double progress,
    required String createdAt,
    required String changedAt,
  }) = _UserContinentProgress;

  factory UserContinentProgress.fromJson(Map<String, Object?> json) => _$UserContinentProgressFromJson(json);
}
