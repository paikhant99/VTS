import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:frontend/remote/entities/responses/appointment.dart';
import 'package:frontend/remote/entities/responses/vaccine.dart';

part 'vaccination.freezed.dart';
part 'vaccination.g.dart';


@freezed
class Vaccination with _$Vaccination{

  factory Vaccination({
    @JsonKey(name: 'id') required int vaccineId,
    @JsonKey(name: 'dosing_time') required int dosingTime,
    @JsonKey(name: 'next_due_date') required String nextDueDate,
    @JsonKey(name: 'remarks') required String remarks,
    @JsonKey(name: 'vaccine') required Vaccine vaccine,
    @JsonKey(name: 'appointment') required Appointment appointment,
  }) = _Vaccination;

  factory Vaccination.fromJson(Map<String, Object?> json) =>
      _$VaccinationFromJson(json);
}