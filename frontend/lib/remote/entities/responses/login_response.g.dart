// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      refresh: json['refresh'] as String,
      access: json['access'] as String,
      userId: (json['user_id'] as num).toInt(),
      username: json['username'] as String,
      dateOfBirth: json['date_of_birth'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      address: json['address'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'refresh': instance.refresh,
      'access': instance.access,
      'user_id': instance.userId,
      'username': instance.username,
      'date_of_birth': instance.dateOfBirth,
      'gender': _$GenderEnumMap[instance.gender]!,
      'address': instance.address,
      'role': instance.role,
    };

const _$GenderEnumMap = {
  Gender.Male: 'Male',
  Gender.Female: 'Female',
};
