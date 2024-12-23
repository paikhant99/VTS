import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/vaccination.dart';
import 'package:frontend/repository/vaccination_repository.dart';
import 'package:frontend/views/user_data_provider.dart';

class ViewVaccinationViewmodel extends ChangeNotifier {
  final UserDataProvider _userDataProvider;
  final VaccinationRepository _repo;

  List<Vaccination> _vaccinations = [];

  UnmodifiableListView<Vaccination> get vaccinations =>
      UnmodifiableListView(_vaccinations);

  ViewVaccinationViewmodel.namedPrivate(
      {required UserDataProvider userDataProvider,
      required VaccinationRepository vaccinationRepo})
      : _userDataProvider = userDataProvider,
        _repo = vaccinationRepo;

  void getAllVaccinations() async {
    var result = await _repo.getAllVaccinations(
        _userDataProvider.token, _userDataProvider.id.toString());
    result.when((vaccinations) {
      _vaccinations = vaccinations;
    }, (error) {
      if (error is ApiException &&
          jsonDecode(error.message)['code'] == "token_not_valid") {
        _userDataProvider.logOut();
      }
    });
    notifyListeners();
  }
}
