import 'dart:convert';

import 'package:epkl/models/forms/tempat_pkl_form_model.dart';
import 'package:epkl/models/tables/tempat_pkl_model.dart';
import 'package:epkl/services/auth_service.dart';
import 'package:epkl/shared/shared_class.dart';
import 'package:epkl/shared/shared_values.dart';
import "package:http/http.dart" as http;

class TempatPklService {
  Future<void> addTempatPkl(TempatPklFormModel data) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.post(
        Uri.parse("$apiBaseUrl/tempat_pkl"),
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

  Future<void> editTempatPkl(int id, TempatPklFormModel data) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.put(
        Uri.parse("$apiBaseUrl/tempat_pkl/$id"),
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

  Future<List<TempatPklModel>> getAllTempatPkl() async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse("$apiBaseUrl/tempat_pkl"),
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
          .map((e) => TempatPklModel.fromJson(e))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<TempatPklModel> getTempatPklById(int id) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.get(
        Uri.parse("$apiBaseUrl/tempat_pkl/$id"),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
      return TempatPklModel.fromJson(decodedBody['data']);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteTempatPkl(int id) async {
    try {
      final token = await AuthService().getToken();
      final res = await http.delete(
        Uri.parse("$apiBaseUrl/tempat_pkl/$id"),
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
