import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/models/user.dart';
import 'land.dart';
import 'level.dart';

part 'user_land_progress.freezed.dart';
part 'user_land_progress.g.dart';

@freezed
class UserLandProgress with _$UserLandProgress {
  const factory UserLandProgress({
    required String uuid,
    required Land land,
    required User user,
    required double progress,
    required String createdAt,
    required String changedAt,
  }) = _UserLandProgress;

  factory UserLandProgress.fromJson(Map<String, Object?> json) => _$UserLandProgressFromJson(json);
}
