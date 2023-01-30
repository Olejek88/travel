import 'package:freezed_annotation/freezed_annotation.dart';

import 'continent.dart';

part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    required String uuid,
    required String title,
    required String? image,
    required Continent continent,
    required String createdAt,
    required String changedAt,
  }) = _Country;

  factory Country.fromJson(Map<String, Object?> json) => _$CountryFromJson(json);
}
