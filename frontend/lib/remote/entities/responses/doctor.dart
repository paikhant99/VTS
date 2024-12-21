import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'doctor.freezed.dart';
part 'doctor.g.dart';

@freezed
class Doctor with _$Doctor {
  const factory Doctor({
          @JsonKey(name: "id") required int doctorId,
          @JsonKey(name: "username") required String doctorName,
          @JsonKey(name: "gender") required String gender}) =
      _Doctor;

  factory Doctor.fromJson(Map<String, Object?> json) =>
      _$DoctorFromJson(json);
}
