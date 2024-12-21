import 'dart:convert';
import 'dart:io';

import 'package:frontend/local/user_preferences.dart';
import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/requests/login_request.dart';
import 'package:frontend/remote/entities/requests/register_request.dart';
import 'package:frontend/remote/entities/responses/login_response.dart';
import 'package:frontend/remote/entities/responses/register_response.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:frontend/data/enums.dart';
import 'package:http/http.dart' as http;

abstract class UserRepository {
  Future<Result<LoginResponse, Exception>> loginUser(
      String username, String password);
  Future<Result<RegisterResponse, Exception>> registerPatient(
      String username,
      String email,
      String password,
      String dateOfBirth,
      Gender gender,
      String? address);
  Future<Map<String, dynamic>?> getLoginInfo();
  Future<bool> logOut();
}

class UserRepositoryImpl extends UserRepository {
  final ApiService _apiService;
  final UserPreferences _userPreferences;
  UserRepositoryImpl.namedPrivate(
      {required ApiService apiService,
      required UserPreferences userPreferences})
      : _apiService = ApiService(),
        _userPreferences = UserPreferences();

  @override
  Future<Result<LoginResponse, Exception>> loginUser(
      String username, String password) async {
    try {
      http.Response response = await _apiService
          .login(LoginRequest(username: username, password: password));
      if (response.statusCode == HttpStatus.ok) {
        final loginResponse = LoginResponse.fromJson(jsonDecode(response.body));
        _userPreferences.saveLoginInfo(
            loginResponse.userId,
            loginResponse.username,
            loginResponse.dateOfBirth,
            loginResponse.gender,
            loginResponse.access);
        return Success(loginResponse);
      }
      throw Exception(response.body);
    } on Exception catch (error) {
      return Error(error);
    }
  }

  @override
  Future<Result<RegisterResponse, Exception>> registerPatient(
      String username,
      String email,
      String password,
      String dateOfBirth,
      Gender gender,
      String? address) async {
    http.Response response = await _apiService.register(RegisterRequest(
        username: username,
        email: email,
        password: password,
        dateOfBirth: dateOfBirth,
        gender: gender.name,
        address: address));
    if (response.statusCode == HttpStatus.created) {
      return Success(RegisterResponse.fromJson(jsonDecode(response.body)));
    }
    return Error(Exception(response.body));
  }

  @override
  Future<Map<String, dynamic>?> getLoginInfo() async {
    return await _userPreferences.getLoginInfo();
  }

  @override
  Future<bool> logOut() async {
    return (await _userPreferences.deleteLoginInfo()) == null;
  }
}
