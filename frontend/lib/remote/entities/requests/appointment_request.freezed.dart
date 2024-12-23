// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppointmentRequest _$AppointmentRequestFromJson(Map<String, dynamic> json) {
  return _AppointmentRequest.fromJson(json);
}

/// @nodoc
mixin _$AppointmentRequest {
  @JsonKey(name: "consultation")
  String get consultationId => throw _privateConstructorUsedError;
  @JsonKey(name: "disease")
  String get diseaseId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentRequestCopyWith<AppointmentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentRequestCopyWith<$Res> {
  factory $AppointmentRequestCopyWith(
          AppointmentRequest value, $Res Function(AppointmentRequest) then) =
      _$AppointmentRequestCopyWithImpl<$Res, AppointmentRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "consultation") String consultationId,
      @JsonKey(name: "disease") String diseaseId});
}

/// @nodoc
class _$AppointmentRequestCopyWithImpl<$Res, $Val extends AppointmentRequest>
    implements $AppointmentRequestCopyWith<$Res> {
  _$AppointmentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultationId = null,
    Object? diseaseId = null,
  }) {
    return _then(_value.copyWith(
      consultationId: null == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseId: null == diseaseId
          ? _value.diseaseId
          : diseaseId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppointmentRequestImplCopyWith<$Res>
    implements $AppointmentRequestCopyWith<$Res> {
  factory _$$AppointmentRequestImplCopyWith(_$AppointmentRequestImpl value,
          $Res Function(_$AppointmentRequestImpl) then) =
      __$$AppointmentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "consultation") String consultationId,
      @JsonKey(name: "disease") String diseaseId});
}

/// @nodoc
class __$$AppointmentRequestImplCopyWithImpl<$Res>
    extends _$AppointmentRequestCopyWithImpl<$Res, _$AppointmentRequestImpl>
    implements _$$AppointmentRequestImplCopyWith<$Res> {
  __$$AppointmentRequestImplCopyWithImpl(_$AppointmentRequestImpl _value,
      $Res Function(_$AppointmentRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? consultationId = null,
    Object? diseaseId = null,
  }) {
    return _then(_$AppointmentRequestImpl(
      consultationId: null == consultationId
          ? _value.consultationId
          : consultationId // ignore: cast_nullable_to_non_nullable
              as String,
      diseaseId: null == diseaseId
          ? _value.diseaseId
          : diseaseId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentRequestImpl
    with DiagnosticableTreeMixin
    implements _AppointmentRequest {
  _$AppointmentRequestImpl(
      {@JsonKey(name: "consultation") required this.consultationId,
      @JsonKey(name: "disease") required this.diseaseId});

  factory _$AppointmentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentRequestImplFromJson(json);

  @override
  @JsonKey(name: "consultation")
  final String consultationId;
  @override
  @JsonKey(name: "disease")
  final String diseaseId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppointmentRequest(consultationId: $consultationId, diseaseId: $diseaseId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppointmentRequest'))
      ..add(DiagnosticsProperty('consultationId', consultationId))
      ..add(DiagnosticsProperty('diseaseId', diseaseId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentRequestImpl &&
            (identical(other.consultationId, consultationId) ||
                other.consultationId == consultationId) &&
            (identical(other.diseaseId, diseaseId) ||
                other.diseaseId == diseaseId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, consultationId, diseaseId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentRequestImplCopyWith<_$AppointmentRequestImpl> get copyWith =>
      __$$AppointmentRequestImplCopyWithImpl<_$AppointmentRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentRequestImplToJson(
      this,
    );
  }
}

abstract class _AppointmentRequest implements AppointmentRequest {
  factory _AppointmentRequest(
          {@JsonKey(name: "consultation") required final String consultationId,
          @JsonKey(name: "disease") required final String diseaseId}) =
      _$AppointmentRequestImpl;

  factory _AppointmentRequest.fromJson(Map<String, dynamic> json) =
      _$AppointmentRequestImpl.fromJson;

  @override
  @JsonKey(name: "consultation")
  String get consultationId;
  @override
  @JsonKey(name: "disease")
  String get diseaseId;
  @override
  @JsonKey(ignore: true)
  _$$AppointmentRequestImplCopyWith<_$AppointmentRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
