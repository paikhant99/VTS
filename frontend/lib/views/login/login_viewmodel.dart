import 'package:flutter/foundation.dart';
import 'package:frontend/backend/entities/result.dart';
import 'package:frontend/repository/user_repository.dart';

class LoginViewmodel extends ChangeNotifier{

  bool loading = false;
  Result? loginResult;

  final UserRepository userRepo;

  LoginViewmodel({required this.userRepo});  

  void login(String username, String password){
    loading = true;
    notifyListeners();
    userRepo.loginUser(username, password).then(
      (result){
        loginResult = result;
        loading = false;
        notifyListeners();
      }
    );
    
  }

}