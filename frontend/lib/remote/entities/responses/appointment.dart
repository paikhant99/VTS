import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';
import 'package:frontend/remote/entities/responses/disease.dart';
import 'package:frontend/remote/entities/responses/patient.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment(
          {@JsonKey(name: "id") required int appointmentId,
          @JsonKey(name: "consultation") required TimeSlot consultation,
          @JsonKey(name: "patient") required Patient patient,
          @JsonKey(name: "disease") required Disease disease}) =
      _Appointment;

  factory Appointment.fromJson(Map<String, Object?> json) =>
      _$AppointmentFromJson(json);
}
