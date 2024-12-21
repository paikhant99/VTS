import 'package:flutter/material.dart';
import 'package:frontend/repository/user_repository.dart';

class UserDataProvider extends ChangeNotifier {
  final UserRepository _repo;

  int? _id;
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
  int? get id => _id;

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
      _id = result['user_id'];
      notifyListeners();
    }
  }

  void logOut() async {
    if (_isLoggedIn) {
      await _repo.logOut();
      _isLoggedIn = false;
      _username = "";
      _dateOfBirth = "";
      _gender = "";
      _token = "";
      _id = null;
      notifyListeners();
    }
  }
}
