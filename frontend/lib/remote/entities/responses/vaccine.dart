import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'vaccine.freezed.dart';
part 'vaccine.g.dart';


@freezed
class Vaccine with _$Vaccine{

  factory Vaccine({
    @JsonKey(name: 'id') required int vaccineId,
    @JsonKey(name: 'vaccine_name') required String vaccineName,
    @JsonKey(name: 'total_dosage') required int totalDosage,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'modified_at') required String modifiedAt,
    @JsonKey(name: 'disease') required int disease,
  }) = _Vaccine;

  factory Vaccine.fromJson(Map<String, Object?> json) =>
      _$VaccineFromJson(json);
}