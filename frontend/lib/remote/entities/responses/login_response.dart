import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:frontend/data/enums.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String refresh,
    required String access,
    @JsonKey(name: 'user_id') required int userId,
    required String username,
    @JsonKey(name: 'date_of_birth') required String dateOfBirth,
    required Gender gender,
    required String address,
    required String role,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, Object?> json) =>
      _$LoginResponseFromJson(json);
}
