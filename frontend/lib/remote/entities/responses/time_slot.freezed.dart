// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeSlot _$TimeSlotFromJson(Map<String, dynamic> json) {
  return _TimeSlot.fromJson(json);
}

/// @nodoc
mixin _$TimeSlot {
  @JsonKey(name: 'id')
  int get timeSlotId => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctor')
  Doctor get doctor => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_datetime')
  String get availableDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeSlotCopyWith<TimeSlot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotCopyWith<$Res> {
  factory $TimeSlotCopyWith(TimeSlot value, $Res Function(TimeSlot) then) =
      _$TimeSlotCopyWithImpl<$Res, TimeSlot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int timeSlotId,
      @JsonKey(name: 'doctor') Doctor doctor,
      @JsonKey(name: 'available_datetime') String availableDateTime,
      @JsonKey(name: 'is_available') bool isAvailable});

  $DoctorCopyWith<$Res> get doctor;
}

/// @nodoc
class _$TimeSlotCopyWithImpl<$Res, $Val extends TimeSlot>
    implements $TimeSlotCopyWith<$Res> {
  _$TimeSlotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlotId = null,
    Object? doctor = null,
    Object? availableDateTime = null,
    Object? isAvailable = null,
  }) {
    return _then(_value.copyWith(
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor,
      availableDateTime: null == availableDateTime
          ? _value.availableDateTime
          : availableDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DoctorCopyWith<$Res> get doctor {
    return $DoctorCopyWith<$Res>(_value.doctor, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeSlotImplCopyWith<$Res>
    implements $TimeSlotCopyWith<$Res> {
  factory _$$TimeSlotImplCopyWith(
          _$TimeSlotImpl value, $Res Function(_$TimeSlotImpl) then) =
      __$$TimeSlotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int timeSlotId,
      @JsonKey(name: 'doctor') Doctor doctor,
      @JsonKey(name: 'available_datetime') String availableDateTime,
      @JsonKey(name: 'is_available') bool isAvailable});

  @override
  $DoctorCopyWith<$Res> get doctor;
}

/// @nodoc
class __$$TimeSlotImplCopyWithImpl<$Res>
    extends _$TimeSlotCopyWithImpl<$Res, _$TimeSlotImpl>
    implements _$$TimeSlotImplCopyWith<$Res> {
  __$$TimeSlotImplCopyWithImpl(
      _$TimeSlotImpl _value, $Res Function(_$TimeSlotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeSlotId = null,
    Object? doctor = null,
    Object? availableDateTime = null,
    Object? isAvailable = null,
  }) {
    return _then(_$TimeSlotImpl(
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
      doctor: null == doctor
          ? _value.doctor
          : doctor // ignore: cast_nullable_to_non_nullable
              as Doctor,
      availableDateTime: null == availableDateTime
          ? _value.availableDateTime
          : availableDateTime // ignore: cast_nullable_to_non_nullable
              as String,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotImpl with DiagnosticableTreeMixin implements _TimeSlot {
  _$TimeSlotImpl(
      {@JsonKey(name: 'id') required this.timeSlotId,
      @JsonKey(name: 'doctor') required this.doctor,
      @JsonKey(name: 'available_datetime') required this.availableDateTime,
      @JsonKey(name: 'is_available') required this.isAvailable});

  factory _$TimeSlotImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int timeSlotId;
  @override
  @JsonKey(name: 'doctor')
  final Doctor doctor;
  @override
  @JsonKey(name: 'available_datetime')
  final String availableDateTime;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimeSlot(timeSlotId: $timeSlotId, doctor: $doctor, availableDateTime: $availableDateTime, isAvailable: $isAvailable)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimeSlot'))
      ..add(DiagnosticsProperty('timeSlotId', timeSlotId))
      ..add(DiagnosticsProperty('doctor', doctor))
      ..add(DiagnosticsProperty('availableDateTime', availableDateTime))
      ..add(DiagnosticsProperty('isAvailable', isAvailable));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotImpl &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.availableDateTime, availableDateTime) ||
                other.availableDateTime == availableDateTime) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timeSlotId, doctor, availableDateTime, isAvailable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      __$$TimeSlotImplCopyWithImpl<_$TimeSlotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotImplToJson(
      this,
    );
  }
}

abstract class _TimeSlot implements TimeSlot {
  factory _TimeSlot(
          {@JsonKey(name: 'id') required final int timeSlotId,
          @JsonKey(name: 'doctor') required final Doctor doctor,
          @JsonKey(name: 'available_datetime')
          required final String availableDateTime,
          @JsonKey(name: 'is_available') required final bool isAvailable}) =
      _$TimeSlotImpl;

  factory _TimeSlot.fromJson(Map<String, dynamic> json) =
      _$TimeSlotImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get timeSlotId;
  @override
  @JsonKey(name: 'doctor')
  Doctor get doctor;
  @override
  @JsonKey(name: 'available_datetime')
  String get availableDateTime;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(ignore: true)
  _$$TimeSlotImplCopyWith<_$TimeSlotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
