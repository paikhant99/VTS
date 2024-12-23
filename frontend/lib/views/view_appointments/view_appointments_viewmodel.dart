import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/appointment.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/repository/appointment_repository.dart';
import 'package:frontend/repository/consultation_repository.dart';
import 'package:frontend/views/user_data_provider.dart';

class ViewAppointmentsViewmodel extends ChangeNotifier {
  final UserDataProvider _userDataProvider;
  final ConsultationRepository _consultationRepo;
  final AppointmentRepository _appointmentRepo;

  List<TimeSlot> _consultationSlots = [];
  List<Appointment> _appointments = [];

  UnmodifiableListView<TimeSlot> get consultationSlots =>
      UnmodifiableListView(_consultationSlots);
  UnmodifiableListView<Appointment> get appointments =>
      UnmodifiableListView(_appointments);

  ViewAppointmentsViewmodel.namedPrivate(
      {required UserDataProvider userDataProvider,
      required ConsultationRepository consultationRepo,
      required AppointmentRepository appointmentRepo})
      : _userDataProvider = userDataProvider,
        _consultationRepo = consultationRepo,
        _appointmentRepo = appointmentRepo;

  void getAvailableTimeSlots() async {
    var result = await _consultationRepo
        .getAllConsultationSlots(_userDataProvider.token);
    result.when((consultationSlots) {
      _consultationSlots = consultationSlots;
    }, (error) {
      if (error is ApiException &&
          jsonDecode(error.message)['code'] == "token_not_valid") {
        _userDataProvider.logOut();
      }
    });
    notifyListeners();
  }

  void getAllAppointments() async {
    var result = await _appointmentRepo.getAllAppointments(
        _userDataProvider.token, _userDataProvider.id.toString());
    result.when((appointments) {
      _appointments = appointments;
    }, (error) {
      if (error is ApiException &&
          jsonDecode(error.message)['code'] == "token_not_valid") {
        _userDataProvider.logOut();
      }
    });
    notifyListeners();
  }
}
