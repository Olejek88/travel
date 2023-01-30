import 'package:freezed_annotation/freezed_annotation.dart';

part 'continent.freezed.dart';
part 'continent.g.dart';

@freezed
class Continent with _$Continent {
  const factory Continent({
    required String uuid,
    required String title,
    required String? image,
    required String createdAt,
    required String changedAt,
  }) = _Continent;

  factory Continent.fromJson(Map<String, Object?> json) => _$ContinentFromJson(json);
}
