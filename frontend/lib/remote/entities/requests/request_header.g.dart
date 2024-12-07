// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestHeaderImpl _$$RequestHeaderImplFromJson(Map<String, dynamic> json) =>
    _$RequestHeaderImpl(
      contentType: json['Content-Type'] as String,
      acceptType: json['Accept'] as String,
      authorization: json['Authorization'] as String,
    );

Map<String, dynamic> _$$RequestHeaderImplToJson(_$RequestHeaderImpl instance) =>
    <String, dynamic>{
      'Content-Type': instance.contentType,
      'Accept': instance.acceptType,
      'Authorization': instance.authorization,
    };
