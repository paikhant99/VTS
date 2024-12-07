import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/register_response.dart';
import 'package:frontend/data/enums.dart';
import 'package:frontend/repository/user_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class RegisterPatientViewmodel extends ChangeNotifier{

  final UserRepository _repo;

  RegisterPatientViewmodel.namedPrivate({required UserRepository userRepo}) : _repo = userRepo;

  Future<Result<RegisterResponse, Exception>> registerPatient(String username, String email, String password, String dateOfBirth, Gender gender, String? address){
    return _repo.registerPatient(username, email, password, dateOfBirth, gender, address);
    
  }
}