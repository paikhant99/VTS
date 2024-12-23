// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vaccine _$VaccineFromJson(Map<String, dynamic> json) {
  return _Vaccine.fromJson(json);
}

/// @nodoc
mixin _$Vaccine {
  @JsonKey(name: 'id')
  int get vaccineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine_name')
  String get vaccineName => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_dosage')
  int get totalDosage => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'modified_at')
  String get modifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'disease')
  int get disease => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccineCopyWith<Vaccine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccineCopyWith<$Res> {
  factory $VaccineCopyWith(Vaccine value, $Res Function(Vaccine) then) =
      _$VaccineCopyWithImpl<$Res, Vaccine>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int vaccineId,
      @JsonKey(name: 'vaccine_name') String vaccineName,
      @JsonKey(name: 'total_dosage') int totalDosage,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'modified_at') String modifiedAt,
      @JsonKey(name: 'disease') int disease});
}

/// @nodoc
class _$VaccineCopyWithImpl<$Res, $Val extends Vaccine>
    implements $VaccineCopyWith<$Res> {
  _$VaccineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineId = null,
    Object? vaccineName = null,
    Object? totalDosage = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? disease = null,
  }) {
    return _then(_value.copyWith(
      vaccineId: null == vaccineId
          ? _value.vaccineId
          : vaccineId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineName: null == vaccineName
          ? _value.vaccineName
          : vaccineName // ignore: cast_nullable_to_non_nullable
              as String,
      totalDosage: null == totalDosage
          ? _value.totalDosage
          : totalDosage // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VaccineImplCopyWith<$Res> implements $VaccineCopyWith<$Res> {
  factory _$$VaccineImplCopyWith(
          _$VaccineImpl value, $Res Function(_$VaccineImpl) then) =
      __$$VaccineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int vaccineId,
      @JsonKey(name: 'vaccine_name') String vaccineName,
      @JsonKey(name: 'total_dosage') int totalDosage,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'modified_at') String modifiedAt,
      @JsonKey(name: 'disease') int disease});
}

/// @nodoc
class __$$VaccineImplCopyWithImpl<$Res>
    extends _$VaccineCopyWithImpl<$Res, _$VaccineImpl>
    implements _$$VaccineImplCopyWith<$Res> {
  __$$VaccineImplCopyWithImpl(
      _$VaccineImpl _value, $Res Function(_$VaccineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineId = null,
    Object? vaccineName = null,
    Object? totalDosage = null,
    Object? createdAt = null,
    Object? modifiedAt = null,
    Object? disease = null,
  }) {
    return _then(_$VaccineImpl(
      vaccineId: null == vaccineId
          ? _value.vaccineId
          : vaccineId // ignore: cast_nullable_to_non_nullable
              as int,
      vaccineName: null == vaccineName
          ? _value.vaccineName
          : vaccineName // ignore: cast_nullable_to_non_nullable
              as String,
      totalDosage: null == totalDosage
          ? _value.totalDosage
          : totalDosage // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      modifiedAt: null == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccineImpl with DiagnosticableTreeMixin implements _Vaccine {
  _$VaccineImpl(
      {@JsonKey(name: 'id') required this.vaccineId,
      @JsonKey(name: 'vaccine_name') required this.vaccineName,
      @JsonKey(name: 'total_dosage') required this.totalDosage,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'modified_at') required this.modifiedAt,
      @JsonKey(name: 'disease') required this.disease});

  factory _$VaccineImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccineImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int vaccineId;
  @override
  @JsonKey(name: 'vaccine_name')
  final String vaccineName;
  @override
  @JsonKey(name: 'total_dosage')
  final int totalDosage;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'modified_at')
  final String modifiedAt;
  @override
  @JsonKey(name: 'disease')
  final int disease;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Vaccine(vaccineId: $vaccineId, vaccineName: $vaccineName, totalDosage: $totalDosage, createdAt: $createdAt, modifiedAt: $modifiedAt, disease: $disease)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Vaccine'))
      ..add(DiagnosticsProperty('vaccineId', vaccineId))
      ..add(DiagnosticsProperty('vaccineName', vaccineName))
      ..add(DiagnosticsProperty('totalDosage', totalDosage))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('modifiedAt', modifiedAt))
      ..add(DiagnosticsProperty('disease', disease));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccineImpl &&
            (identical(other.vaccineId, vaccineId) ||
                other.vaccineId == vaccineId) &&
            (identical(other.vaccineName, vaccineName) ||
                other.vaccineName == vaccineName) &&
            (identical(other.totalDosage, totalDosage) ||
                other.totalDosage == totalDosage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            (identical(other.disease, disease) || other.disease == disease));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vaccineId, vaccineName,
      totalDosage, createdAt, modifiedAt, disease);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccineImplCopyWith<_$VaccineImpl> get copyWith =>
      __$$VaccineImplCopyWithImpl<_$VaccineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccineImplToJson(
      this,
    );
  }
}

abstract class _Vaccine implements Vaccine {
  factory _Vaccine(
      {@JsonKey(name: 'id') required final int vaccineId,
      @JsonKey(name: 'vaccine_name') required final String vaccineName,
      @JsonKey(name: 'total_dosage') required final int totalDosage,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'modified_at') required final String modifiedAt,
      @JsonKey(name: 'disease') required final int disease}) = _$VaccineImpl;

  factory _Vaccine.fromJson(Map<String, dynamic> json) = _$VaccineImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get vaccineId;
  @override
  @JsonKey(name: 'vaccine_name')
  String get vaccineName;
  @override
  @JsonKey(name: 'total_dosage')
  int get totalDosage;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'modified_at')
  String get modifiedAt;
  @override
  @JsonKey(name: 'disease')
  int get disease;
  @override
  @JsonKey(ignore: true)
  _$$VaccineImplCopyWith<_$VaccineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
