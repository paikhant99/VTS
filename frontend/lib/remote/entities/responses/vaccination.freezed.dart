// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vaccination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Vaccination _$VaccinationFromJson(Map<String, dynamic> json) {
  return _Vaccination.fromJson(json);
}

/// @nodoc
mixin _$Vaccination {
  @JsonKey(name: 'id')
  int get vaccineId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dosing_time')
  int get dosingTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_due_date')
  String get nextDueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'remarks')
  String get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'vaccine')
  Vaccine get vaccine => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment')
  Appointment get appointment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaccinationCopyWith<Vaccination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaccinationCopyWith<$Res> {
  factory $VaccinationCopyWith(
          Vaccination value, $Res Function(Vaccination) then) =
      _$VaccinationCopyWithImpl<$Res, Vaccination>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int vaccineId,
      @JsonKey(name: 'dosing_time') int dosingTime,
      @JsonKey(name: 'next_due_date') String nextDueDate,
      @JsonKey(name: 'remarks') String remarks,
      @JsonKey(name: 'vaccine') Vaccine vaccine,
      @JsonKey(name: 'appointment') Appointment appointment});

  $VaccineCopyWith<$Res> get vaccine;
  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class _$VaccinationCopyWithImpl<$Res, $Val extends Vaccination>
    implements $VaccinationCopyWith<$Res> {
  _$VaccinationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineId = null,
    Object? dosingTime = null,
    Object? nextDueDate = null,
    Object? remarks = null,
    Object? vaccine = null,
    Object? appointment = null,
  }) {
    return _then(_value.copyWith(
      vaccineId: null == vaccineId
          ? _value.vaccineId
          : vaccineId // ignore: cast_nullable_to_non_nullable
              as int,
      dosingTime: null == dosingTime
          ? _value.dosingTime
          : dosingTime // ignore: cast_nullable_to_non_nullable
              as int,
      nextDueDate: null == nextDueDate
          ? _value.nextDueDate
          : nextDueDate // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      vaccine: null == vaccine
          ? _value.vaccine
          : vaccine // ignore: cast_nullable_to_non_nullable
              as Vaccine,
      appointment: null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VaccineCopyWith<$Res> get vaccine {
    return $VaccineCopyWith<$Res>(_value.vaccine, (value) {
      return _then(_value.copyWith(vaccine: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get appointment {
    return $AppointmentCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VaccinationImplCopyWith<$Res>
    implements $VaccinationCopyWith<$Res> {
  factory _$$VaccinationImplCopyWith(
          _$VaccinationImpl value, $Res Function(_$VaccinationImpl) then) =
      __$$VaccinationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int vaccineId,
      @JsonKey(name: 'dosing_time') int dosingTime,
      @JsonKey(name: 'next_due_date') String nextDueDate,
      @JsonKey(name: 'remarks') String remarks,
      @JsonKey(name: 'vaccine') Vaccine vaccine,
      @JsonKey(name: 'appointment') Appointment appointment});

  @override
  $VaccineCopyWith<$Res> get vaccine;
  @override
  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$VaccinationImplCopyWithImpl<$Res>
    extends _$VaccinationCopyWithImpl<$Res, _$VaccinationImpl>
    implements _$$VaccinationImplCopyWith<$Res> {
  __$$VaccinationImplCopyWithImpl(
      _$VaccinationImpl _value, $Res Function(_$VaccinationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccineId = null,
    Object? dosingTime = null,
    Object? nextDueDate = null,
    Object? remarks = null,
    Object? vaccine = null,
    Object? appointment = null,
  }) {
    return _then(_$VaccinationImpl(
      vaccineId: null == vaccineId
          ? _value.vaccineId
          : vaccineId // ignore: cast_nullable_to_non_nullable
              as int,
      dosingTime: null == dosingTime
          ? _value.dosingTime
          : dosingTime // ignore: cast_nullable_to_non_nullable
              as int,
      nextDueDate: null == nextDueDate
          ? _value.nextDueDate
          : nextDueDate // ignore: cast_nullable_to_non_nullable
              as String,
      remarks: null == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      vaccine: null == vaccine
          ? _value.vaccine
          : vaccine // ignore: cast_nullable_to_non_nullable
              as Vaccine,
      appointment: null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VaccinationImpl with DiagnosticableTreeMixin implements _Vaccination {
  _$VaccinationImpl(
      {@JsonKey(name: 'id') required this.vaccineId,
      @JsonKey(name: 'dosing_time') required this.dosingTime,
      @JsonKey(name: 'next_due_date') required this.nextDueDate,
      @JsonKey(name: 'remarks') required this.remarks,
      @JsonKey(name: 'vaccine') required this.vaccine,
      @JsonKey(name: 'appointment') required this.appointment});

  factory _$VaccinationImpl.fromJson(Map<String, dynamic> json) =>
      _$$VaccinationImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int vaccineId;
  @override
  @JsonKey(name: 'dosing_time')
  final int dosingTime;
  @override
  @JsonKey(name: 'next_due_date')
  final String nextDueDate;
  @override
  @JsonKey(name: 'remarks')
  final String remarks;
  @override
  @JsonKey(name: 'vaccine')
  final Vaccine vaccine;
  @override
  @JsonKey(name: 'appointment')
  final Appointment appointment;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Vaccination(vaccineId: $vaccineId, dosingTime: $dosingTime, nextDueDate: $nextDueDate, remarks: $remarks, vaccine: $vaccine, appointment: $appointment)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Vaccination'))
      ..add(DiagnosticsProperty('vaccineId', vaccineId))
      ..add(DiagnosticsProperty('dosingTime', dosingTime))
      ..add(DiagnosticsProperty('nextDueDate', nextDueDate))
      ..add(DiagnosticsProperty('remarks', remarks))
      ..add(DiagnosticsProperty('vaccine', vaccine))
      ..add(DiagnosticsProperty('appointment', appointment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VaccinationImpl &&
            (identical(other.vaccineId, vaccineId) ||
                other.vaccineId == vaccineId) &&
            (identical(other.dosingTime, dosingTime) ||
                other.dosingTime == dosingTime) &&
            (identical(other.nextDueDate, nextDueDate) ||
                other.nextDueDate == nextDueDate) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.vaccine, vaccine) || other.vaccine == vaccine) &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vaccineId, dosingTime,
      nextDueDate, remarks, vaccine, appointment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VaccinationImplCopyWith<_$VaccinationImpl> get copyWith =>
      __$$VaccinationImplCopyWithImpl<_$VaccinationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VaccinationImplToJson(
      this,
    );
  }
}

abstract class _Vaccination implements Vaccination {
  factory _Vaccination(
      {@JsonKey(name: 'id') required final int vaccineId,
      @JsonKey(name: 'dosing_time') required final int dosingTime,
      @JsonKey(name: 'next_due_date') required final String nextDueDate,
      @JsonKey(name: 'remarks') required final String remarks,
      @JsonKey(name: 'vaccine') required final Vaccine vaccine,
      @JsonKey(name: 'appointment')
      required final Appointment appointment}) = _$VaccinationImpl;

  factory _Vaccination.fromJson(Map<String, dynamic> json) =
      _$VaccinationImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get vaccineId;
  @override
  @JsonKey(name: 'dosing_time')
  int get dosingTime;
  @override
  @JsonKey(name: 'next_due_date')
  String get nextDueDate;
  @override
  @JsonKey(name: 'remarks')
  String get remarks;
  @override
  @JsonKey(name: 'vaccine')
  Vaccine get vaccine;
  @override
  @JsonKey(name: 'appointment')
  Appointment get appointment;
  @override
  @JsonKey(ignore: true)
  _$$VaccinationImplCopyWith<_$VaccinationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
