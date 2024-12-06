import 'dart:convert';
import 'dart:io';

import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/requests/login_request.dart';
import 'package:frontend/remote/entities/requests/register_request.dart';
import 'package:frontend/remote/entities/responses/login_response.dart';
import 'package:frontend/remote/entities/responses/register_response.dart';
import 'package:frontend/remote/entities/result.dart';
import 'package:frontend/data/enums.dart';
import 'package:http/http.dart' as http;

abstract class UserRepository{
  Future<Result<LoginResponse>> loginUser(String username, String password);
  Future<Result<RegisterResponse>> registerPatient(String username, String email, String password, String dateOfBirth, Gender gender, String? address);
}

class UserRepositoryImpl extends UserRepository{

  final ApiService apiService;
  UserRepositoryImpl({required this.apiService});
  
  @override
  Future<Result<LoginResponse>> loginUser(String username, String password) async{
    http.Response response = await apiService.login(LoginRequest(username: username, password: password));
    if (response.statusCode == HttpStatus.ok){
      return Result.success(LoginResponse.fromJson(jsonDecode(response.body)));
    }
    return Result.failure(response.body.toString());
  }

  @override
  Future<Result<RegisterResponse>> registerPatient(String username, String email, String password, String dateOfBirth, Gender gender, String? address) async{
    http.Response response = await apiService.register(RegisterRequest(username: username, email: email, password: password, dateOfBirth: dateOfBirth, gender: gender.name, address: address));
    if (response.statusCode == HttpStatus.created){
      return Result.success(RegisterResponse.fromJson(jsonDecode(response.body)));
    }
    return Result.failure(response.body.toString());
  }
}