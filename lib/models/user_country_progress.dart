import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:travel/main_lib.dart';
import 'package:travel/models/user.dart';
import 'country.dart';
import 'level.dart';

part 'user_country_progress.freezed.dart';
part 'user_country_progress.g.dart';

@freezed
class UserCountryProgress with _$UserCountryProgress {
  const factory UserCountryProgress({
    required String uuid,
    required Country country,
    required User user,
    required double progress,
    required String createdAt,
    required String changedAt,
  }) = _UserCountryProgress;

  factory UserCountryProgress.fromJson(Map<String, Object?> json) => _$UserCountryProgressFromJson(json);
}
