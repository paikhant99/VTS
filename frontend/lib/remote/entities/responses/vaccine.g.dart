// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaccineImpl _$$VaccineImplFromJson(Map<String, dynamic> json) =>
    _$VaccineImpl(
      vaccineId: (json['id'] as num).toInt(),
      vaccineName: json['vaccine_name'] as String,
      totalDosage: (json['total_dosage'] as num).toInt(),
      createdAt: json['created_at'] as String,
      modifiedAt: json['modified_at'] as String,
      disease: (json['disease'] as num).toInt(),
    );

Map<String, dynamic> _$$VaccineImplToJson(_$VaccineImpl instance) =>
    <String, dynamic>{
      'id': instance.vaccineId,
      'vaccine_name': instance.vaccineName,
      'total_dosage': instance.totalDosage,
      'created_at': instance.createdAt,
      'modified_at': instance.modifiedAt,
      'disease': instance.disease,
    };
