import 'dart:convert';
import 'dart:io';

import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/vaccination.dart';
import 'package:http/http.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class VaccinationRepository {
  Future<Result<List<Vaccination>, dynamic>> getAllVaccinations(
      String token, String patientId);
}

class VaccinationRepositoryImpl extends VaccinationRepository {
  final ApiService _apiService;

  VaccinationRepositoryImpl.namedPrivate({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Vaccination>, dynamic>> getAllVaccinations(
      String token, String patientId) async {
    try {
      Response response =
          await _apiService.getAllVaccinations(token, patientId);
      if (response.statusCode == HttpStatus.ok) {
        return Success((jsonDecode(response.body) as List)
            .map((vaccination) => Vaccination.fromJson(vaccination))
            .toList());
      }
      throw ApiException(response.body, response.statusCode);
    } catch (error) {
      return Error(error);
    }
  }
}
