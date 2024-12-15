import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';


@freezed
class TimeSlot with _$TimeSlot{

  const factory TimeSlot({
    @JsonKey(name: 'id') required int timeSlotId,
    @JsonKey(name: 'doctor') required int doctorId,
    @JsonKey(name: 'available_datetime') required String availableDateTime,
    @JsonKey(name: 'is_available') required bool isAvailable,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, Object?> json) =>
      _$TimeSlotFromJson(json);
}