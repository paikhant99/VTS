// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotImpl _$$TimeSlotImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotImpl(
      doctorId: json['doctor_id'] as String,
      availableDateTime: json['available_datetime'] as String,
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$TimeSlotImplToJson(_$TimeSlotImpl instance) =>
    <String, dynamic>{
      'doctor_id': instance.doctorId,
      'available_datetime': instance.availableDateTime,
      'is_available': instance.isAvailable,
    };
