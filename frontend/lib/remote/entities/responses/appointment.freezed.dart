// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Appointment _$AppointmentFromJson(Map<String, dynamic> json) {
  return _Appointment.fromJson(json);
}

/// @nodoc
mixin _$Appointment {
  @JsonKey(name: "id")
  int get appointmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "consultation")
  TimeSlot get consultation => throw _privateConstructorUsedError;
  @JsonKey(name: "patient")
  Patient get patient => throw _privateConstructorUsedError;
  @JsonKey(name: "disease")
  Disease get disease => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int appointmentId,
      @JsonKey(name: "consultation") TimeSlot consultation,
      @JsonKey(name: "patient") Patient patient,
      @JsonKey(name: "disease") Disease disease});

  $TimeSlotCopyWith<$Res> get consultation;
  $PatientCopyWith<$Res> get patient;
  $DiseaseCopyWith<$Res> get disease;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? consultation = null,
    Object? patient = null,
    Object? disease = null,
  }) {
    return _then(_value.copyWith(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int,
      consultation: null == consultation
          ? _value.consultation
          : consultation // ignore: cast_nullable_to_non_nullable
              as TimeSlot,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as Disease,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSlotCopyWith<$Res> get consultation {
    return $TimeSlotCopyWith<$Res>(_value.consultation, (value) {
      return _then(_value.copyWith(consultation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PatientCopyWith<$Res> get patient {
    return $PatientCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DiseaseCopyWith<$Res> get disease {
    return $DiseaseCopyWith<$Res>(_value.disease, (value) {
      return _then(_value.copyWith(disease: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentImplCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$AppointmentImplCopyWith(
          _$AppointmentImpl value, $Res Function(_$AppointmentImpl) then) =
      __$$AppointmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int appointmentId,
      @JsonKey(name: "consultation") TimeSlot consultation,
      @JsonKey(name: "patient") Patient patient,
      @JsonKey(name: "disease") Disease disease});

  @override
  $TimeSlotCopyWith<$Res> get consultation;
  @override
  $PatientCopyWith<$Res> get patient;
  @override
  $DiseaseCopyWith<$Res> get disease;
}

/// @nodoc
class __$$AppointmentImplCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$AppointmentImpl>
    implements _$$AppointmentImplCopyWith<$Res> {
  __$$AppointmentImplCopyWithImpl(
      _$AppointmentImpl _value, $Res Function(_$AppointmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointmentId = null,
    Object? consultation = null,
    Object? patient = null,
    Object? disease = null,
  }) {
    return _then(_$AppointmentImpl(
      appointmentId: null == appointmentId
          ? _value.appointmentId
          : appointmentId // ignore: cast_nullable_to_non_nullable
              as int,
      consultation: null == consultation
          ? _value.consultation
          : consultation // ignore: cast_nullable_to_non_nullable
              as TimeSlot,
      patient: null == patient
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient,
      disease: null == disease
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as Disease,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentImpl with DiagnosticableTreeMixin implements _Appointment {
  const _$AppointmentImpl(
      {@JsonKey(name: "id") required this.appointmentId,
      @JsonKey(name: "consultation") required this.consultation,
      @JsonKey(name: "patient") required this.patient,
      @JsonKey(name: "disease") required this.disease});

  factory _$AppointmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int appointmentId;
  @override
  @JsonKey(name: "consultation")
  final TimeSlot consultation;
  @override
  @JsonKey(name: "patient")
  final Patient patient;
  @override
  @JsonKey(name: "disease")
  final Disease disease;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Appointment(appointmentId: $appointmentId, consultation: $consultation, patient: $patient, disease: $disease)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Appointment'))
      ..add(DiagnosticsProperty('appointmentId', appointmentId))
      ..add(DiagnosticsProperty('consultation', consultation))
      ..add(DiagnosticsProperty('patient', patient))
      ..add(DiagnosticsProperty('disease', disease));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentImpl &&
            (identical(other.appointmentId, appointmentId) ||
                other.appointmentId == appointmentId) &&
            (identical(other.consultation, consultation) ||
                other.consultation == consultation) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.disease, disease) || other.disease == disease));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appointmentId, consultation, patient, disease);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      __$$AppointmentImplCopyWithImpl<_$AppointmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentImplToJson(
      this,
    );
  }
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
          {@JsonKey(name: "id") required final int appointmentId,
          @JsonKey(name: "consultation") required final TimeSlot consultation,
          @JsonKey(name: "patient") required final Patient patient,
          @JsonKey(name: "disease") required final Disease disease}) =
      _$AppointmentImpl;

  factory _Appointment.fromJson(Map<String, dynamic> json) =
      _$AppointmentImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get appointmentId;
  @override
  @JsonKey(name: "consultation")
  TimeSlot get consultation;
  @override
  @JsonKey(name: "patient")
  Patient get patient;
  @override
  @JsonKey(name: "disease")
  Disease get disease;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentImplCopyWith<_$AppointmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
