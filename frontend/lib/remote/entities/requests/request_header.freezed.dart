// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestHeader _$RequestHeaderFromJson(Map<String, dynamic> json) {
  return _RequestHeader.fromJson(json);
}

/// @nodoc
mixin _$RequestHeader {
  @JsonKey(name: "Content-Type")
  String get contentType => throw _privateConstructorUsedError;
  @JsonKey(name: "Accept")
  String get acceptType => throw _privateConstructorUsedError;
  @JsonKey(name: "Authorization")
  String get authorization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestHeaderCopyWith<RequestHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestHeaderCopyWith<$Res> {
  factory $RequestHeaderCopyWith(
          RequestHeader value, $Res Function(RequestHeader) then) =
      _$RequestHeaderCopyWithImpl<$Res, RequestHeader>;
  @useResult
  $Res call(
      {@JsonKey(name: "Content-Type") String contentType,
      @JsonKey(name: "Accept") String acceptType,
      @JsonKey(name: "Authorization") String authorization});
}

/// @nodoc
class _$RequestHeaderCopyWithImpl<$Res, $Val extends RequestHeader>
    implements $RequestHeaderCopyWith<$Res> {
  _$RequestHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? acceptType = null,
    Object? authorization = null,
  }) {
    return _then(_value.copyWith(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      acceptType: null == acceptType
          ? _value.acceptType
          : acceptType // ignore: cast_nullable_to_non_nullable
              as String,
      authorization: null == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestHeaderImplCopyWith<$Res>
    implements $RequestHeaderCopyWith<$Res> {
  factory _$$RequestHeaderImplCopyWith(
          _$RequestHeaderImpl value, $Res Function(_$RequestHeaderImpl) then) =
      __$$RequestHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Content-Type") String contentType,
      @JsonKey(name: "Accept") String acceptType,
      @JsonKey(name: "Authorization") String authorization});
}

/// @nodoc
class __$$RequestHeaderImplCopyWithImpl<$Res>
    extends _$RequestHeaderCopyWithImpl<$Res, _$RequestHeaderImpl>
    implements _$$RequestHeaderImplCopyWith<$Res> {
  __$$RequestHeaderImplCopyWithImpl(
      _$RequestHeaderImpl _value, $Res Function(_$RequestHeaderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? acceptType = null,
    Object? authorization = null,
  }) {
    return _then(_$RequestHeaderImpl(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      acceptType: null == acceptType
          ? _value.acceptType
          : acceptType // ignore: cast_nullable_to_non_nullable
              as String,
      authorization: null == authorization
          ? _value.authorization
          : authorization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestHeaderImpl
    with DiagnosticableTreeMixin
    implements _RequestHeader {
  _$RequestHeaderImpl(
      {@JsonKey(name: "Content-Type") required this.contentType,
      @JsonKey(name: "Accept") required this.acceptType,
      @JsonKey(name: "Authorization") required this.authorization});

  factory _$RequestHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestHeaderImplFromJson(json);

  @override
  @JsonKey(name: "Content-Type")
  final String contentType;
  @override
  @JsonKey(name: "Accept")
  final String acceptType;
  @override
  @JsonKey(name: "Authorization")
  final String authorization;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestHeader(contentType: $contentType, acceptType: $acceptType, authorization: $authorization)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestHeader'))
      ..add(DiagnosticsProperty('contentType', contentType))
      ..add(DiagnosticsProperty('acceptType', acceptType))
      ..add(DiagnosticsProperty('authorization', authorization));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestHeaderImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.acceptType, acceptType) ||
                other.acceptType == acceptType) &&
            (identical(other.authorization, authorization) ||
                other.authorization == authorization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentType, acceptType, authorization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestHeaderImplCopyWith<_$RequestHeaderImpl> get copyWith =>
      __$$RequestHeaderImplCopyWithImpl<_$RequestHeaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestHeaderImplToJson(
      this,
    );
  }
}

abstract class _RequestHeader implements RequestHeader {
  factory _RequestHeader(
      {@JsonKey(name: "Content-Type") required final String contentType,
      @JsonKey(name: "Accept") required final String acceptType,
      @JsonKey(name: "Authorization")
      required final String authorization}) = _$RequestHeaderImpl;

  factory _RequestHeader.fromJson(Map<String, dynamic> json) =
      _$RequestHeaderImpl.fromJson;

  @override
  @JsonKey(name: "Content-Type")
  String get contentType;
  @override
  @JsonKey(name: "Accept")
  String get acceptType;
  @override
  @JsonKey(name: "Authorization")
  String get authorization;
  @override
  @JsonKey(ignore: true)
  _$$RequestHeaderImplCopyWith<_$RequestHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
