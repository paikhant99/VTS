
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'request_header.freezed.dart';
part 'request_header.g.dart';

@freezed
class RequestHeader with _$RequestHeader{
  factory RequestHeader({
    @JsonKey(name: "Content-Type") required String contentType,
    @JsonKey(name: "Accept") required String acceptType,
    @JsonKey(name: "Authorization") required String authorization
  }) = _RequestHeader;

  factory RequestHeader.fromJson(Map<String, Object?> json) =>
      _$RequestHeaderFromJson(json);
}