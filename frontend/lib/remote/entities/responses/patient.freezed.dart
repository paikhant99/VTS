// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'patient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Patient _$PatientFromJson(Map<String, dynamic> json) {
  return _Patient.fromJson(json);
}

/// @nodoc
mixin _$Patient {
  @JsonKey(name: "id")
  int get patientId => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get patientName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String get patientMail => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  String get patientDOB => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String get patientGender => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get patientAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatientCopyWith<Patient> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientCopyWith<$Res> {
  factory $PatientCopyWith(Patient value, $Res Function(Patient) then) =
      _$PatientCopyWithImpl<$Res, Patient>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int patientId,
      @JsonKey(name: "username") String patientName,
      @JsonKey(name: "email") String patientMail,
      @JsonKey(name: "date_of_birth") String patientDOB,
      @JsonKey(name: "gender") String patientGender,
      @JsonKey(name: "address") String patientAddress});
}

/// @nodoc
class _$PatientCopyWithImpl<$Res, $Val extends Patient>
    implements $PatientCopyWith<$Res> {
  _$PatientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? patientName = null,
    Object? patientMail = null,
    Object? patientDOB = null,
    Object? patientGender = null,
    Object? patientAddress = null,
  }) {
    return _then(_value.copyWith(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientMail: null == patientMail
          ? _value.patientMail
          : patientMail // ignore: cast_nullable_to_non_nullable
              as String,
      patientDOB: null == patientDOB
          ? _value.patientDOB
          : patientDOB // ignore: cast_nullable_to_non_nullable
              as String,
      patientGender: null == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as String,
      patientAddress: null == patientAddress
          ? _value.patientAddress
          : patientAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PatientImplCopyWith<$Res> implements $PatientCopyWith<$Res> {
  factory _$$PatientImplCopyWith(
          _$PatientImpl value, $Res Function(_$PatientImpl) then) =
      __$$PatientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int patientId,
      @JsonKey(name: "username") String patientName,
      @JsonKey(name: "email") String patientMail,
      @JsonKey(name: "date_of_birth") String patientDOB,
      @JsonKey(name: "gender") String patientGender,
      @JsonKey(name: "address") String patientAddress});
}

/// @nodoc
class __$$PatientImplCopyWithImpl<$Res>
    extends _$PatientCopyWithImpl<$Res, _$PatientImpl>
    implements _$$PatientImplCopyWith<$Res> {
  __$$PatientImplCopyWithImpl(
      _$PatientImpl _value, $Res Function(_$PatientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patientId = null,
    Object? patientName = null,
    Object? patientMail = null,
    Object? patientDOB = null,
    Object? patientGender = null,
    Object? patientAddress = null,
  }) {
    return _then(_$PatientImpl(
      patientId: null == patientId
          ? _value.patientId
          : patientId // ignore: cast_nullable_to_non_nullable
              as int,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
      patientMail: null == patientMail
          ? _value.patientMail
          : patientMail // ignore: cast_nullable_to_non_nullable
              as String,
      patientDOB: null == patientDOB
          ? _value.patientDOB
          : patientDOB // ignore: cast_nullable_to_non_nullable
              as String,
      patientGender: null == patientGender
          ? _value.patientGender
          : patientGender // ignore: cast_nullable_to_non_nullable
              as String,
      patientAddress: null == patientAddress
          ? _value.patientAddress
          : patientAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PatientImpl with DiagnosticableTreeMixin implements _Patient {
  const _$PatientImpl(
      {@JsonKey(name: "id") required this.patientId,
      @JsonKey(name: "username") required this.patientName,
      @JsonKey(name: "email") required this.patientMail,
      @JsonKey(name: "date_of_birth") required this.patientDOB,
      @JsonKey(name: "gender") required this.patientGender,
      @JsonKey(name: "address") required this.patientAddress});

  factory _$PatientImpl.fromJson(Map<String, dynamic> json) =>
      _$$PatientImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int patientId;
  @override
  @JsonKey(name: "username")
  final String patientName;
  @override
  @JsonKey(name: "email")
  final String patientMail;
  @override
  @JsonKey(name: "date_of_birth")
  final String patientDOB;
  @override
  @JsonKey(name: "gender")
  final String patientGender;
  @override
  @JsonKey(name: "address")
  final String patientAddress;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Patient(patientId: $patientId, patientName: $patientName, patientMail: $patientMail, patientDOB: $patientDOB, patientGender: $patientGender, patientAddress: $patientAddress)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Patient'))
      ..add(DiagnosticsProperty('patientId', patientId))
      ..add(DiagnosticsProperty('patientName', patientName))
      ..add(DiagnosticsProperty('patientMail', patientMail))
      ..add(DiagnosticsProperty('patientDOB', patientDOB))
      ..add(DiagnosticsProperty('patientGender', patientGender))
      ..add(DiagnosticsProperty('patientAddress', patientAddress));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PatientImpl &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.patientMail, patientMail) ||
                other.patientMail == patientMail) &&
            (identical(other.patientDOB, patientDOB) ||
                other.patientDOB == patientDOB) &&
            (identical(other.patientGender, patientGender) ||
                other.patientGender == patientGender) &&
            (identical(other.patientAddress, patientAddress) ||
                other.patientAddress == patientAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, patientId, patientName,
      patientMail, patientDOB, patientGender, patientAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      __$$PatientImplCopyWithImpl<_$PatientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PatientImplToJson(
      this,
    );
  }
}

abstract class _Patient implements Patient {
  const factory _Patient(
          {@JsonKey(name: "id") required final int patientId,
          @JsonKey(name: "username") required final String patientName,
          @JsonKey(name: "email") required final String patientMail,
          @JsonKey(name: "date_of_birth") required final String patientDOB,
          @JsonKey(name: "gender") required final String patientGender,
          @JsonKey(name: "address") required final String patientAddress}) =
      _$PatientImpl;

  factory _Patient.fromJson(Map<String, dynamic> json) = _$PatientImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get patientId;
  @override
  @JsonKey(name: "username")
  String get patientName;
  @override
  @JsonKey(name: "email")
  String get patientMail;
  @override
  @JsonKey(name: "date_of_birth")
  String get patientDOB;
  @override
  @JsonKey(name: "gender")
  String get patientGender;
  @override
  @JsonKey(name: "address")
  String get patientAddress;
  @override
  @JsonKey(ignore: true)
  _$$PatientImplCopyWith<_$PatientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
