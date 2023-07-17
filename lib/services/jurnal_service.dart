import 'dart:convert';

import 'package:epkl/models/forms/jurnal_form_model.dart';
import 'package:epkl/models/tables/jurnal_model.dart';
import 'package:epkl/services/auth_service.dart';
import 'package:epkl/shared/shared_class.dart';
import 'package:epkl/shared/shared_values.dart';
import "package:http/http.dart" as http;

class JurnalService {
  Future<void> addJurnal(JurnalFormModel data) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.post(
        Uri.parse("$apiBaseUrl/jurnal"),
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

  Future<void> editJurnal(int id, JurnalFormModel data) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.put(
        Uri.parse("$apiBaseUrl/jurnal/$id"),
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

  Future<List<JurnalModel>> getAllJurnal() async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse("$apiBaseUrl/jurnal"),
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
          .map((e) => JurnalModel.fromJson(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<JurnalModel> getJurnalById(int id) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse("$apiBaseUrl/jurnal/$id"),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
      return JurnalModel.fromJson(decodedBody['data']);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteJurnal(int id) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.delete(
        Uri.parse("$apiBaseUrl/jurnal/$id"),
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
