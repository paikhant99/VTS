import 'package:frontend/backend/entities/requests/login_request.dart';
import 'package:frontend/backend/entities/requests/register_request.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/vts_app.dart';

class ApiService {
  Future<http.Response> login(LoginRequest request) async {
    return http.post(Uri.parse(VTSApp.LOGIN_API),
        body: request.toJson());
  }

  Future<http.Response> register(RegisterRequest request) {
    return http.post(Uri.parse(VTSApp.REGISTER_API), body: request.toJson());
  }
}
