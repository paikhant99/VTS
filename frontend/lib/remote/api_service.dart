import 'dart:io';

import 'package:frontend/remote/entities/requests/login_request.dart';
import 'package:frontend/remote/entities/requests/register_request.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/vts_app.dart';

class ApiService {
  Future<http.Response> login(LoginRequest request) async {
    return http.post(Uri.parse(VTSApp.LOGIN_API), body: request.toJson());
  }

  Future<http.Response> register(RegisterRequest request) {
    return http.post(Uri.parse(VTSApp.REGISTER_API), body: request.toJson());
  }

  Future<http.Response> getAvailableTimeSlots(String token) {
    return http.get(Uri.parse(VTSApp.GET_TIMESLOTS_API),
        headers: {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "Bearer $token"
        });
  }
}
