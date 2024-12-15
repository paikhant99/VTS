import 'dart:convert';
import 'dart:io';

import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:http/http.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AppointmentRepository{
   Future<Result<List<TimeSlot>,String>> getAvailableTimeSlots(String token);
}

class AppointmentRepositoryImpl extends AppointmentRepository{

  final ApiService _apiService;

  AppointmentRepositoryImpl.namedPrivate({required ApiService apiService}): _apiService = apiService;

  @override
  Future<Result<List<TimeSlot>,String>> getAvailableTimeSlots(String token)async{
    Response response = await _apiService.getAvailableTimeSlots(token);
    if (response.statusCode == HttpStatus.ok){
      return Success((jsonDecode(response.body) as List).map((ts) => TimeSlot.fromJson(ts)).toList());
    }
    return Error(response.body);
  }
}