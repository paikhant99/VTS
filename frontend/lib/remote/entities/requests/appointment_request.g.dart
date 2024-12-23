// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentRequestImpl _$$AppointmentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AppointmentRequestImpl(
      consultationId: json['consultation'] as String,
      diseaseId: json['disease'] as String,
    );

Map<String, dynamic> _$$AppointmentRequestImplToJson(
        _$AppointmentRequestImpl instance) =>
    <String, dynamic>{
      'consultation': instance.consultationId,
      'disease': instance.diseaseId,
    };
