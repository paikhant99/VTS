// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'disease.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Disease _$DiseaseFromJson(Map<String, dynamic> json) {
  return _Disease.fromJson(json);
}

/// @nodoc
mixin _$Disease {
  @JsonKey(name: "id")
  int get diseaseId => throw _privateConstructorUsedError;
  @JsonKey(name: "disease_name")
  String get diseaseName => throw _privateConstructorUsedError;
  @JsonKey(name: "disease_severity")
  String get diseaseSeverity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseaseCopyWith<Disease> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseCopyWith<$Res> {
  factory $DiseaseCopyWith(Disease value, $Res Function(Disease) then) =
      _$DiseaseCopyWithImpl<$Res, Disease>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int diseaseId,
      @JsonKey(name: "disease_name") String diseaseName,
      @JsonKey(name: "disease_severity") String diseaseSeverity});
}

/// @nodoc
class _$DiseaseCopyWithImpl<$Res, $Val extends Disease>
    implements $DiseaseCopyWith<$Res> {
  _$DiseaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseId = null,
    Object? diseaseName = null,
    Object? diseaseSeverity = null,
  }) {
    return _then(_value.copyWith(
      diseaseId: null == diseaseId
          ? _value.diseaseId
          : diseaseId // ignore: cast_nullable_to_non_nullable
              as int,
      diseaseName: null == diseaseName
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseSeverity: null == diseaseSeverity
          ? _value.diseaseSeverity
          : diseaseSeverity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiseaseImplCopyWith<$Res> implements $DiseaseCopyWith<$Res> {
  factory _$$DiseaseImplCopyWith(
          _$DiseaseImpl value, $Res Function(_$DiseaseImpl) then) =
      __$$DiseaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int diseaseId,
      @JsonKey(name: "disease_name") String diseaseName,
      @JsonKey(name: "disease_severity") String diseaseSeverity});
}

/// @nodoc
class __$$DiseaseImplCopyWithImpl<$Res>
    extends _$DiseaseCopyWithImpl<$Res, _$DiseaseImpl>
    implements _$$DiseaseImplCopyWith<$Res> {
  __$$DiseaseImplCopyWithImpl(
      _$DiseaseImpl _value, $Res Function(_$DiseaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diseaseId = null,
    Object? diseaseName = null,
    Object? diseaseSeverity = null,
  }) {
    return _then(_$DiseaseImpl(
      diseaseId: null == diseaseId
          ? _value.diseaseId
          : diseaseId // ignore: cast_nullable_to_non_nullable
              as int,
      diseaseName: null == diseaseName
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseSeverity: null == diseaseSeverity
          ? _value.diseaseSeverity
          : diseaseSeverity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiseaseImpl with DiagnosticableTreeMixin implements _Disease {
  const _$DiseaseImpl(
      {@JsonKey(name: "id") required this.diseaseId,
      @JsonKey(name: "disease_name") required this.diseaseName,
      @JsonKey(name: "disease_severity") required this.diseaseSeverity});

  factory _$DiseaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiseaseImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int diseaseId;
  @override
  @JsonKey(name: "disease_name")
  final String diseaseName;
  @override
  @JsonKey(name: "disease_severity")
  final String diseaseSeverity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Disease(diseaseId: $diseaseId, diseaseName: $diseaseName, diseaseSeverity: $diseaseSeverity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Disease'))
      ..add(DiagnosticsProperty('diseaseId', diseaseId))
      ..add(DiagnosticsProperty('diseaseName', diseaseName))
      ..add(DiagnosticsProperty('diseaseSeverity', diseaseSeverity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiseaseImpl &&
            (identical(other.diseaseId, diseaseId) ||
                other.diseaseId == diseaseId) &&
            (identical(other.diseaseName, diseaseName) ||
                other.diseaseName == diseaseName) &&
            (identical(other.diseaseSeverity, diseaseSeverity) ||
                other.diseaseSeverity == diseaseSeverity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, diseaseId, diseaseName, diseaseSeverity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiseaseImplCopyWith<_$DiseaseImpl> get copyWith =>
      __$$DiseaseImplCopyWithImpl<_$DiseaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiseaseImplToJson(
      this,
    );
  }
}

abstract class _Disease implements Disease {
  const factory _Disease(
      {@JsonKey(name: "id") required final int diseaseId,
      @JsonKey(name: "disease_name") required final String diseaseName,
      @JsonKey(name: "disease_severity")
      required final String diseaseSeverity}) = _$DiseaseImpl;

  factory _Disease.fromJson(Map<String, dynamic> json) = _$DiseaseImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get diseaseId;
  @override
  @JsonKey(name: "disease_name")
  String get diseaseName;
  @override
  @JsonKey(name: "disease_severity")
  String get diseaseSeverity;
  @override
  @JsonKey(ignore: true)
  _$$DiseaseImplCopyWith<_$DiseaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
