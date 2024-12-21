// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccinationImpl _$$VaccinationImplFromJson(Map<String, dynamic> json) =>
    _$VaccinationImpl(
      vaccineId: (json['id'] as num).toInt(),
      dosingTime: (json['dosing_time'] as num).toInt(),
      nextDueDate: json['next_due_date'] as String,
      remarks: json['remarks'] as String,
      vaccine: Vaccine.fromJson(json['vaccine'] as Map<String, dynamic>),
      appointment:
          Appointment.fromJson(json['appointment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VaccinationImplToJson(_$VaccinationImpl instance) =>
    <String, dynamic>{
      'id': instance.vaccineId,
      'dosing_time': instance.dosingTime,
      'next_due_date': instance.nextDueDate,
      'remarks': instance.remarks,
      'vaccine': instance.vaccine,
      'appointment': instance.appointment,
    };
