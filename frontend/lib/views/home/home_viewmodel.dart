import 'package:flutter/material.dart';
import 'package:frontend/repository/user_repository.dart';

class HomeViewmodel extends ChangeNotifier {
  final UserRepository _repo;

  String _username = "";
  String _dateOfBirth = "";
  String _gender = "";
  String _token = "";

  String get username => _username;
  String get dateOfBirth => _dateOfBirth;
  String get gender => _gender;
  String get token => _token;

  HomeViewmodel.namedPrivate({required UserRepository userRepo})
      : _repo = userRepo;

  void getLoggedInStatus() {
    _repo.getLoginInfo().then((value) {
      _username = value['username'];
      _dateOfBirth = value['date_of_birth'];
      _gender = value['gender'];
      _token = value['token'];
      notifyListeners();
    });
  }
}
