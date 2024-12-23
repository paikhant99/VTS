// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiseaseImpl _$$DiseaseImplFromJson(Map<String, dynamic> json) =>
    _$DiseaseImpl(
      diseaseId: (json['id'] as num).toInt(),
      diseaseName: json['disease_name'] as String,
      diseaseSeverity: json['disease_severity'] as String,
    );

Map<String, dynamic> _$$DiseaseImplToJson(_$DiseaseImpl instance) =>
    <String, dynamic>{
      'id': instance.diseaseId,
      'disease_name': instance.diseaseName,
      'disease_severity': instance.diseaseSeverity,
    };
