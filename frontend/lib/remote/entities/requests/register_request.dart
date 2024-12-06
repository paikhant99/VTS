import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter/foundation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

@freezed
abstract class RegisterRequest with _$RegisterRequest{
  factory RegisterRequest({
    required String username,
    required String email,
    required String password,
    @JsonKey(name: "date_of_birth") required String dateOfBirth,
    required String gender,
    required String? address
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, Object?> json) =>
      _$RegisterRequestFromJson(json);

}