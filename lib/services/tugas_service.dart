import 'dart:convert';

import 'package:epkl/models/forms/tugas_form_model.dart';
import 'package:epkl/models/tables/tugas_model.dart';
import 'package:epkl/services/auth_service.dart';
import 'package:epkl/shared/shared_class.dart';
import 'package:epkl/shared/shared_values.dart';
import "package:http/http.dart" as http;

class TugasService {
  Future<void> addTugas(TugasFormModel data) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.post(
        Uri.parse("$apiBaseUrl/tugas"),
        body: data.toJson(),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> editTugas(int id, TugasFormModel data) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.put(
        Uri.parse("$apiBaseUrl/tugas/$id"),
        body: data.toJson(),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TugasModel>> getAllTugas() async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse("$apiBaseUrl/tugas"),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
      return List.from(decodedBody['data'])
          .map((e) => TugasModel.fromJson(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<TugasModel> getTugasById(int id) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse("$apiBaseUrl/tugas/$id"),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
      return TugasModel.fromJson(decodedBody['data']);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTugas(int id) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.delete(
        Uri.parse("$apiBaseUrl/tugas/$id"),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
    } catch (e) {
      rethrow;
    }
  }
}
