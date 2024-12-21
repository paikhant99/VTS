import 'dart:convert';
import 'dart:io';

import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/requests/appointment_request.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/appointment.dart';
import 'package:http/http.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AppointmentRepository {
  Future<Result<List<Appointment>, dynamic>> getAllAppointments(
      String token, String patientId);
  Future<Result<String, dynamic>> createAppointment(
      String token, String patientId, String consultationId, String diseaseId);
}

class AppointmentRepositoryImpl extends AppointmentRepository {
  final ApiService _apiService;

  AppointmentRepositoryImpl.namedPrivate({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Appointment>, dynamic>> getAllAppointments(
      String token, String patientId) async {
    try {
      Response response =
          await _apiService.getAllAppointments(token, patientId);
      if (response.statusCode == HttpStatus.ok) {
        return Success((jsonDecode(response.body) as List)
            .map((appointment) => Appointment.fromJson(appointment))
            .toList());
      }

      throw ApiException(response.body, response.statusCode);
    } catch (error) {
      return Error(error);
    }
  }

  @override
  Future<Result<String, dynamic>> createAppointment(String token,
      String patientId, String consultationId, String diseaseId) async {
    try {
      Response response = await _apiService.createAppointment(
          token,
          AppointmentRequest(
              consultationId: consultationId, diseaseId: diseaseId),
          patientId);
      if (response.statusCode == HttpStatus.created) {
        return Success(response.body);
      }
      throw ApiException(response.body, response.statusCode);
    } catch (error) {
      return Error(error);
    }
  }
}
