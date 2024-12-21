import 'package:flutter/foundation.dart';
import 'package:frontend/remote/entities/responses/login_response.dart';
import 'package:frontend/repository/user_repository.dart';
import 'package:frontend/views/user_data_provider.dart';
import 'package:multiple_result/multiple_result.dart';

class LoginViewmodel extends ChangeNotifier {
  bool loading = false;

  final UserRepository _userRepo;
  final UserDataProvider _userDataProvider;

  LoginViewmodel(
      {required UserDataProvider userDataProvider,
      required UserRepository userRepo})
      : _userDataProvider = userDataProvider,
        _userRepo = userRepo;

  Future<Result<LoginResponse, Exception>> login(
      String username, String password) async {
    loading = true;
    notifyListeners();
    var result = await _userRepo.loginUser(username, password);
    result.when((response) {
      _userDataProvider.checkLoggedInStatus();
    }, (error) => null);
    loading = false;
    notifyListeners();
    return Future.value(result);
  }
}
