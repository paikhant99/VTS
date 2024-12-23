import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'patient.freezed.dart';
part 'patient.g.dart';

@freezed
class Patient with _$Patient {
  const factory Patient({
    @JsonKey(name: "id") required int patientId,
    @JsonKey(name: "username") required String patientName,
    @JsonKey(name: "email") required String patientMail,
    @JsonKey(name: "date_of_birth") required String patientDOB,
    @JsonKey(name: "gender") required String patientGender,
    @JsonKey(name: "address") required String patientAddress,
  }) = _Patient;

  factory Patient.fromJson(Map<String, Object?> json) =>
      _$PatientFromJson(json);
}
