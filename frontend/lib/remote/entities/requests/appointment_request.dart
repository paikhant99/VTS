import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'appointment_request.freezed.dart';
part 'appointment_request.g.dart';

@freezed
class AppointmentRequest with _$AppointmentRequest {
  factory AppointmentRequest(
          {@JsonKey(name: "consultation") required String consultationId,
          @JsonKey(name: "disease") required String diseaseId}) =
      _AppointmentRequest;

  factory AppointmentRequest.fromJson(Map<String, Object?> json) =>
      _$AppointmentRequestFromJson(json);
}
