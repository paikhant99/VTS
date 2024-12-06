import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/result.dart';
import 'package:frontend/data/enums.dart';
import 'package:frontend/repository/user_repository.dart';

class RegisterPatientViewmodel extends ChangeNotifier{

  final UserRepository userRepo;
  Result? registerResult;

  RegisterPatientViewmodel({required this.userRepo});

  void registerPatient(String username, String email, String password, String dateOfBirth, Gender gender, String? address){
    userRepo.registerPatient(username, email, password, dateOfBirth, gender, address).then( (result){
      registerResult = result;
      notifyListeners();
    });
    
  }
}