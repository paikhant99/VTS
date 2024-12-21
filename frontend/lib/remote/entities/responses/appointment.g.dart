// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      appointmentId: (json['id'] as num).toInt(),
      consultation:
          TimeSlot.fromJson(json['consultation'] as Map<String, dynamic>),
      patient: Patient.fromJson(json['patient'] as Map<String, dynamic>),
      disease: Disease.fromJson(json['disease'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.appointmentId,
      'consultation': instance.consultation,
      'patient': instance.patient,
      'disease': instance.disease,
    };
