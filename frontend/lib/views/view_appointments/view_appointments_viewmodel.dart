import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:frontend/repository/appointment_repository.dart';
import 'package:frontend/views/user_data_provider.dart';

class ViewAppointmentsViewmodel extends ChangeNotifier {

  final UserDataProvider _userDataProvider;
  final AppointmentRepository _repo;
  List<TimeSlot> _timeSlots = [];
  UnmodifiableListView<TimeSlot> get timeSlots =>
      UnmodifiableListView(_timeSlots);

  ViewAppointmentsViewmodel.namedPrivate(
      {required UserDataProvider userDataProvider, required AppointmentRepository appointmentRepo})
      : _userDataProvider = userDataProvider, _repo = appointmentRepo;

  void getAvailableTimeSlots() async{
    var result = await _repo.getAvailableTimeSlots(_userDataProvider.token);
    result.when((timeSlots) {
        _timeSlots = timeSlots;
      },(error){
        if(jsonDecode(error)['code'] == "token_not_valid"){
          _userDataProvider.logOut();
        }
      }
      );
      notifyListeners();
    
  }
}
