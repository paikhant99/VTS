import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/repository/disease_repository.dart';
import 'package:mockito/mockito.dart';

import '../api_service_test.mocks.dart';
import 'package:http/http.dart' as http;

void main() {
  group('DiseaseRepository', () {
    late MockApiService mockApiService;
    late DiseaseRepository diseaseRepository;

    setUp(() {
      mockApiService = MockApiService();
      diseaseRepository = DiseaseRepositoryImpl.namedPrivate(apiService: mockApiService);
    });

    test('get_all_diseases success returns true when API succeeds', () async {

       const mockResponse = [
        {
          'id' : 1,
          'disease_name' : 'Diabetes',
          'disease_severity' : 'Level 1'
        },
      ];
      const token = "23456";
      
      final mockHttpResponse = http.Response(json.encode(mockResponse), 200);

      // Mock successful API response
      when(mockApiService.getAllDiseases(token)).thenAnswer(
          (_) async => mockHttpResponse);

      // Call the login method
      final result = await diseaseRepository.getAllDiseases(token);

      // Assertions
      expect(result.isSuccess(), isTrue);
    });

  });
}