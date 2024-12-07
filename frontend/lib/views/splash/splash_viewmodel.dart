import 'package:flutter/material.dart';
import 'package:frontend/repository/user_repository.dart';

class SplashViewmodel extends ChangeNotifier {
  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  final UserRepository _repo;

  SplashViewmodel.namedPrivate({required UserRepository userRepo})
      : _repo = userRepo;

  Future<void> checkLoggedInStatus() async {
    _isLoggedIn = await _repo.checkLoggedInStatus();
    notifyListeners();
  }
}
