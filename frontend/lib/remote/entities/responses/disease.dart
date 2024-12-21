import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'disease.freezed.dart';
part 'disease.g.dart';

@freezed
class Disease with _$Disease {
  const factory Disease(
          {@JsonKey(name: "id") required int diseaseId,
          @JsonKey(name: "disease_name") required String diseaseName,
          @JsonKey(name: "disease_severity") required String diseaseSeverity}) =
      _Disease;

  factory Disease.fromJson(Map<String, Object?> json) =>
      _$DiseaseFromJson(json);
}
