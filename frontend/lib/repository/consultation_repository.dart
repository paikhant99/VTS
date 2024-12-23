import 'dart:convert';
import 'dart:io';

import 'package:frontend/remote/api_service.dart';
import 'package:frontend/remote/entities/responses/api_exception.dart';
import 'package:frontend/remote/entities/responses/time_slot.dart';
import 'package:http/http.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ConsultationRepository {
  Future<Result<List<TimeSlot>, dynamic>> getAllConsultationSlots(String token);
  Future<Result<List<TimeSlot>, dynamic>> getConsultationSlotsByDate(
      String token, String selectedDate);
}

class ConsultationRepositoryImpl extends ConsultationRepository {
  final ApiService _apiService;

  ConsultationRepositoryImpl.namedPrivate({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<Result<List<TimeSlot>, dynamic>> getAllConsultationSlots(
      String token) async {
    try {
      Response response = await _apiService.getAllConsultationSlots(token);
      if (response.statusCode == HttpStatus.ok) {
        return Success((jsonDecode(response.body) as List)
            .map((ts) => TimeSlot.fromJson(ts))
            .toList());
      }
      throw ApiException(response.body, response.statusCode);
    } catch (error) {
      return Error(error);
    }
  }

  @override
  Future<Result<List<TimeSlot>, dynamic>> getConsultationSlotsByDate(
      String token, String selectedDate) async {
    try {
      Response response =
          await _apiService.getConsultationSlotsByDate(token, selectedDate);
      if (response.statusCode == HttpStatus.ok) {
        return Success((jsonDecode(response.body) as List)
            .map((ts) => TimeSlot.fromJson(ts))
            .toList());
      }
      throw ApiException(response.body, response.statusCode);
    } catch (error) {
      return Error(error);
    }
  }
}
