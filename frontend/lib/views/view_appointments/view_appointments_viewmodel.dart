import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/repository/appointment_repository.dart';

class ViewAppointmentsViewmodel extends ChangeNotifier {
  final AppointmentRepository _repo;
  final List<TimeSlot> _timeSlots = [];
  UnmodifiableListView<TimeSlot> get timeSlots =>
      UnmodifiableListView(_timeSlots);

  ViewAppointmentsViewmodel.namedPrivate(
      {required AppointmentRepository appointmentRepo})
      : _repo = appointmentRepo;

  void getAvailableTimeSlots(String token) {
    _repo.getAvailableTimeSlots(token).then((result) {
      result.whenSuccess((timeSlots) => _timeSlots);
      notifyListeners();
    });
  }
}
