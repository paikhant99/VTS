import 'dart:convert';
import 'dart:io';

import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/disease.dart';
import 'package:http/http.dart' as http;
import 'package:multiple_result/multiple_result.dart';

abstract class DiseaseRepository {
  Future<Result<List<Disease>, dynamic>> getAllDiseases(String token);
}

class DiseaseRepositoryImpl extends DiseaseRepository {
  final ApiService _apiService;

  DiseaseRepositoryImpl.namedPrivate({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<Disease>, dynamic>> getAllDiseases(String token) async {
    try {
      http.Response response = await _apiService.getAllDiseases(token);
      if (response.statusCode == HttpStatus.ok) {
        return Success((jsonDecode(response.body) as List)
            .map((disease) => Disease.fromJson(disease))
            .toList());
      }
      throw ApiException(response.body, response.statusCode);
    } catch (error) {
      return Error(error);
    }
  }
}
