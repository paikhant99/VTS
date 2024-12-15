// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotImpl _$$TimeSlotImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotImpl(
      timeSlotId: (json['id'] as num).toInt(),
      doctorId: (json['doctor'] as num).toInt(),
      availableDateTime: json['available_datetime'] as String,
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$$TimeSlotImplToJson(_$TimeSlotImpl instance) =>
    <String, dynamic>{
      'id': instance.timeSlotId,
      'doctor': instance.doctorId,
      'available_datetime': instance.availableDateTime,
      'is_available': instance.isAvailable,
    };
