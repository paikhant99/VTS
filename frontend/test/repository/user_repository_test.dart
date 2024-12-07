import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/data/enums.dart';
import 'package:frontend/remote/entities/requests/login_request.dart';
import 'package:frontend/remote/entities/requests/register_request.dart';
import 'package:frontend/repository/user_repository.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import '../api_service_test.mocks.dart';
import '../user_preferences_test.mocks.dart';


void main() {
  group('UserRepository', () {
    late MockApiService mockApiService;
    late MockUserPreferences mockUserPreferences;
    late UserRepository userRepository;

    setUp(() {
      mockApiService = MockApiService();
      mockUserPreferences = MockUserPreferences();
      userRepository = UserRepositoryImpl.namedPrivate(apiService: mockApiService, userPreferences: mockUserPreferences);
    });

    test('login returns true when API succeeds', () async {

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

      // Mock successful API response
      when(mockApiService.login(LoginRequest(username: "patient1", password: "securepassword"))).thenAnswer(
          (_) async => mockHttpResponse);

      // Call the login method
      final result = await userRepository.loginUser('patient1', 'securepassword');

      // Assertions
      expect(result.isSuccess, isTrue);
    });

    test('login throws exception when API fails', () async {
      
      const mockResponse = '{"detail":"Invalid credentials"}';
      final mockHttpResponse = http.Response(json.encode(mockResponse), 401);

      // Mock failed API response
      when(mockApiService.login(LoginRequest(username: "patient1", password: "wrongpassword"))).thenAnswer(
        (_) async => mockHttpResponse,
      );

      final result = await userRepository.loginUser("patient1", "wrongpassword");

      // Call the login method
      expect(result.isError(), isTrue);
    });

    test('register Patient returns true when API succeeds', () async {

      final mockResponse = {
        'refresh': 'u2734257',
        'access': 'u2734257',
      };
      final mockHttpResponse = http.Response(json.encode(mockResponse), 201);

      // Mock successful API response
      when(mockApiService.register(RegisterRequest(username: "patient1", email: "u2734256@uel.ac.uk", password: "securepassword", dateOfBirth: "27/4/2000", gender: "Male", address: ""))).thenAnswer(
          (_) async => mockHttpResponse);

      // Call the login method
      final result = await userRepository.registerPatient('patient1', 'u2734256@uel.ac.uk', 'securepassword', '27/4/2000', Gender.Male, "");

      // Assertions
      expect(result.isSuccess(), isTrue);
    });

    test('register Patient throws exception when API fails', () async {
      
      const mockResponse = '{"message":""}';
      final mockHttpResponse = http.Response(json.encode(mockResponse), 401);

      // Mock failed API response
      when(mockApiService.register(RegisterRequest(username: "", email: "", password: "securepassword", dateOfBirth: "27/4/2000", gender: "Male", address: ""))).thenAnswer(
        (_) async => mockHttpResponse,
      );

      final result = await userRepository.registerPatient('', '', 'securepassword', '27/4/2000', Gender.Male, "");

      // Call the login method
      expect(result.isError(), isTrue);
    });

  });
}
