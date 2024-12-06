import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.freezed.dart';

part 'register_response.g.dart';

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required String refresh,
    required String access,
  }) = _RegisterResponse;

  factory RegisterResponse.fromJson(Map<String, Object?> json) =>
      _$RegisterResponseFromJson(json);
}