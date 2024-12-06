import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/requests/login_request.dart';
import 'package:frontend/remote/entities/requests/register_request.dart';
import 'package:frontend/remote/entities/responses/login_response.dart';
import 'package:frontend/remote/entities/responses/register_response.dart';
import 'package:frontend/remote/entities/result.dart';
import 'package:mockito/annotations.dart';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'api_service_test.mocks.dart';

@GenerateMocks([ApiService])
void main() {
  group('ApiService', () {
    late MockApiService mockApiService;
    late ApiService apiService;

    setUp(() {
      mockApiService = MockApiService();
      apiService = ApiService();
    });

    test('login returns success when credentials are correct', () async {
      // Mock the response
      final mockResponse = {
        'refresh': 'u2734257',
        'access': 'u2734257',
        'user_id': '2734257',
        'username': 'patient1',
        'date_of_birth': '27/4/2000',
        'gender': 'Male',
        'address': '',
        'role': 'PATIENT',
      };
      final mockHttpResponse = http.Response(json.encode(mockResponse), 200);

      // Mock login method
      when(mockApiService.login(LoginRequest(username: "patient1", password: "securepassword"))).thenAnswer(
        (_) async => mockHttpResponse,
      );

      // Call the method
      final result = Result.success(LoginResponse.fromJson(jsonDecode((await mockApiService.login(LoginRequest(username: "patient1", password: "securepassword"))).body))) ;

      // Assertions
      expect(result.isSuccess, isTrue);
      expect(result.data!.access, mockResponse['access']);
    });

    test('login returns failure when credentials are invalid', () async {
      // Mock the response
      const mockResponse = '{"detail":"Invalid credentials"}';
      final mockHttpResponse = http.Response(json.encode(mockResponse), 401);

      // Mock login method
      when(mockApiService.login(LoginRequest(username: "patient1", password: "wrongpassword"))).thenAnswer(
        (_) async => mockHttpResponse,
      );

      // Call the method
      final result = Result.failure((await apiService.login(LoginRequest(username: 'patient1', password: 'wrongpassword'))).body);

      // Assertions
      expect(result.isFailure, isTrue);
      expect(result.error, mockResponse.toString());
    });

  test('register Patient returns success when credentials are validated', () async {
      // Mock the response
      final mockResponse = {
        'refresh': 'u2734257',
        'access': 'u2734257',
      };
      final mockHttpResponse = http.Response(json.encode(mockResponse), 201);

      // Mock login method
      when(mockApiService.register(RegisterRequest(username: "patient1", email: "u2734256@uel.ac.uk", password: "securepassword", dateOfBirth: "27/4/2000", gender: "Male", address: ""))).thenAnswer(
        (_) async => mockHttpResponse,
      );

      // Call the method
      final result = Result.success(RegisterResponse.fromJson(jsonDecode((await mockApiService.register(RegisterRequest(username: "patient1", email: "u2734256@uel.ac.uk", password: "securepassword", dateOfBirth: "27/4/2000", gender: "Male", address: ""))).body))) ;

      // Assertions
      expect(result.isSuccess, isTrue);
      expect(result.data!.access, mockResponse['access']);
    });

    test('register Patient returns failure when credentials are invalidated', () async {
      // Mock the response
      const mockResponse = '{"message":""}';
      final mockHttpResponse = http.Response(mockResponse, 400);

      // Mock login method
      when(mockApiService.register(RegisterRequest(username: "", email: "", password: "securepassword", dateOfBirth: "27/4/2000", gender: "Male", address: ""))).thenAnswer(
        (_) async => mockHttpResponse,
      );

      // Call the method
      final result = Result.failure((await mockApiService.register(RegisterRequest(username: "", email: "", password: "securepassword", dateOfBirth: "27/4/2000", gender: "Male", address: ""))).body);

      // Assertions
      expect(result.isFailure, isTrue);
      expect(result.error, mockResponse);
    });
  });
}
