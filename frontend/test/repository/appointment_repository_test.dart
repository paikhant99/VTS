import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/remote/entities/requests/request_header.dart';
import 'package:frontend/repository/appointment_repository.dart';
import 'package:frontend/vts_app.dart';
import 'package:mockito/mockito.dart';

import '../api_service_test.mocks.dart';
import 'package:http/http.dart' as http;

void main() {
  group('UserRepository', () {
    late MockApiService mockApiService;
    late AppointmentRepository appointmentRepository;

    setUp(() {
      mockApiService = MockApiService();
      appointmentRepository = AppointmentRepositoryImpl.namedPrivate(apiService: mockApiService);
    });

    test('get_available_time_slots success returns true when API succeeds', () async {

       const mockResponse = [
        {
          'doctor_id' : 'd123456',
          'available_datetime' : '27/2/2000 03:00:00',
          'is_available' : true
        },
      ];
      const token = "23456";
      
      final mockHttpResponse = http.Response(json.encode(mockResponse), 200);

      // Mock successful API response
      when(mockApiService.getAvailableTimeSlots(RequestHeader(acceptType: VTSApp.APP_JSON, contentType: VTSApp.APP_JSON, authorization: "{Bearer : $token}"))).thenAnswer(
          (_) async => mockHttpResponse);

      // Call the login method
      final result = await appointmentRepository.getAvailableTimeSlots(token);

      // Assertions
      expect(result.isSuccess(), isTrue);
    });

  });
}