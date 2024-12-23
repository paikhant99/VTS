import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/disease.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/repository/appointment_repository.dart';
import 'package:frontend/repository/consultation_repository.dart';
import 'package:frontend/repository/disease_repository.dart';
import 'package:frontend/views/user_data_provider.dart';
import 'package:multiple_result/multiple_result.dart';

class BookAppointmentViewmodel extends ChangeNotifier {
  final UserDataProvider _userDataProvider;
  final DiseaseRepository _diseaseRepo;
  final ConsultationRepository _consultationRepo;
  final AppointmentRepository _appointmentRepo;
  List<Disease> _diseases = [];
  List<TimeSlot> _consultationSlots = [];

  UnmodifiableListView<Disease> get diseases => UnmodifiableListView(_diseases);
  UnmodifiableListView<TimeSlot> get consultationSlots =>
      UnmodifiableListView(_consultationSlots);

  BookAppointmentViewmodel.namedPrivate(
      {required UserDataProvider userDataProvider,
      required DiseaseRepository diseaseRepo,
      required ConsultationRepository consultationRepo,
      required AppointmentRepository appointmentRepo})
      : _userDataProvider = userDataProvider,
        _diseaseRepo = diseaseRepo,
        _consultationRepo = consultationRepo,
        _appointmentRepo = appointmentRepo;

  void getAllDiseases() async {
    var result = await _diseaseRepo.getAllDiseases(_userDataProvider.token);
    result.when((diseases) => _diseases = diseases, (error) {
      if (error is ApiException &&
          jsonDecode(error.message)['code'] == "token_not_valid") {
        _userDataProvider.logOut();
      }
    });
    notifyListeners();
  }

  void getConsultationSlotsByDate(String selectedDate) async {
    var result = await _consultationRepo.getConsultationSlotsByDate(
        _userDataProvider.token, selectedDate);
    result.when((consultationSlots) => _consultationSlots = consultationSlots,
        (error) {
      if (error is ApiException &&
          jsonDecode(error.message)['code'] == "token_not_valid") {
        _userDataProvider.logOut();
      }
    });
    notifyListeners();
  }

  Future<Result<String, dynamic>> createAppointment(
      String consultationId, String diseaseId) {
    return _appointmentRepo.createAppointment(_userDataProvider.token,
        _userDataProvider.id.toString(), consultationId, diseaseId);
  }
}
