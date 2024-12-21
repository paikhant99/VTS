// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      patientId: (json['id'] as num).toInt(),
      patientName: json['username'] as String,
      patientMail: json['email'] as String,
      patientDOB: json['date_of_birth'] as String,
      patientGender: json['gender'] as String,
      patientAddress: json['address'] as String,
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.patientId,
      'username': instance.patientName,
      'email': instance.patientMail,
      'date_of_birth': instance.patientDOB,
      'gender': instance.patientGender,
      'address': instance.patientAddress,
    };
