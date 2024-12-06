// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: json['gender'] as String,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'date_of_birth': instance.dateOfBirth,
      'gender': instance.gender,
      'address': instance.address,
    };
