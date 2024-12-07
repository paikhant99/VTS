import 'package:flutter/foundation.dart';
import 'package:frontend/remote/entities/responses/login_response.dart';
import 'package:frontend/repository/user_repository.dart';
import 'package:multiple_result/multiple_result.dart';

class LoginViewmodel extends ChangeNotifier {
  bool loading = false;

  final UserRepository userRepo;

  LoginViewmodel({required this.userRepo});

  Future<Result<LoginResponse, Exception>> login(String username, String password) async{
    loading = true;
    notifyListeners();
    var result = await userRepo.loginUser(username, password);
    loading = false;
    notifyListeners();
    return Future.value(result);
    
  }
}
