import 'package:flutter/material.dart';
import 'package:frontend/repository/user_repository.dart';

class UserDataProvider extends ChangeNotifier {
  final UserRepository _repo;

  String _username = "";
  String _dateOfBirth = "";
  String _gender = "";
  String _token = "";
  bool _isLoggedIn = false;

  String get username => _username;
  String get dateOfBirth => _dateOfBirth;
  String get gender => _gender;
  String get token => _token;
  bool get isLoggedIn => _isLoggedIn;

  UserDataProvider.namedPrivate({required UserRepository userRepo})
      : _repo = userRepo;

  Future<void> checkLoggedInStatus() async {
    final result = await _repo.getLoginInfo();

    if (result != null) {
      _isLoggedIn = true;
      _username = result['username'];
      _dateOfBirth = result['date_of_birth'];
      _gender = result['gender'];
      _token = result['token'];
      notifyListeners();
    }
  }

  void logOut()async{
    await _repo.logOut();
    _isLoggedIn = true;
      _username = "";
      _dateOfBirth = "";
      _gender = "";
      _token = "";
  }
}
