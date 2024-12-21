import 'dart:io';

import 'package:frontend/remote/entities/requests/appointment_request.dart';
import 'package:frontend/remote/entities/requests/login_request.dart';
import 'package:frontend/remote/entities/requests/register_request.dart';
import 'package:http/http.dart';
import 'package:frontend/vts_app.dart';

abstract class AuthenticationApiService {
  Future<Response> login(LoginRequest request);
  Future<Response> register(RegisterRequest request);
}

abstract class ConsultationSlotsApiService {
  Future<Response> getAllConsultationSlots(String token);
  Future<Response> getConsultationSlotsByDate(
      String token, String selectedDate);
}

abstract class DiseaseApiService {
  Future<Response> getAllDiseases(String token);
}

abstract class AppointmentApiService {
  Future<Response> getAllAppointments(String token, String patientId);
  Future<Response> createAppointment(
      String token, AppointmentRequest request, String patientId);
}

abstract class VaccinationApiService {
  Future<Response> getAllVaccinations(String token, String patientId);
}

class ApiService
    implements
        AuthenticationApiService,
        ConsultationSlotsApiService,
        DiseaseApiService,
        AppointmentApiService,
        VaccinationApiService {
  @override
  Future<Response> login(LoginRequest request) async {
    return post(Uri.parse(VTSApp.loginApi), body: request.toJson());
  }

  @override
  Future<Response> register(RegisterRequest request) {
    return post(Uri.parse(VTSApp.registerApi), body: request.toJson());
  }

  @override
  Future<Response> getAllConsultationSlots(String token) {
    return get(Uri.parse(VTSApp.timeslotsApi), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token"
    });
  }

  @override
  Future<Response> getConsultationSlotsByDate(
      String token, String selectedDate) {
    return get(
        Uri.parse(VTSApp.timeslotsApi)
            .replace(queryParameters: {"datetime": selectedDate}),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token"
        });
  }

  @override
  Future<Response> getAllDiseases(String token) {
    return get(Uri.parse(VTSApp.diseasesApi), headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: "Bearer $token"
    });
  }

  @override
  Future<Response> getAllAppointments(String token, String patientId) {
    return get(
        Uri.parse(VTSApp.appointmentsApi)
            .replace(queryParameters: {"patient_id": patientId}),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token"
        });
  }

  @override
  Future<Response> createAppointment(
      String token, AppointmentRequest request, String patientId) {
    return post(
        Uri.parse(VTSApp.appointmentsApi)
            .replace(queryParameters: {"patient_id": patientId}),
        headers: {HttpHeaders.authorizationHeader: "Bearer $token"},
        body: request.toJson());
  }

  @override
  Future<Response> getAllVaccinations(String token, String patientId) {
    return get(
        Uri.parse(VTSApp.vaccinationsApi)
            .replace(queryParameters: {"patient_id": patientId}),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token"
        });
  }
}
