import 'package:freezed_annotation/freezed_annotation.dart';

import '../../main_lib.dart';
part 'continents_response.g.dart';
part 'continents_response.freezed.dart';

@freezed
abstract class ContinentsResponse with _$ContinentsResponse {
  const factory ContinentsResponse({required List<Continent> result}) = _ContinentsResponse;
  factory ContinentsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContinentsResponseFromJson(json);
}