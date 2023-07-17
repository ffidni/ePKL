import "dart:convert";

import "package:epkl/models/forms/sign_in_form_model.dart";
import "package:epkl/models/forms/sign_up_form_model.dart";
import 'package:epkl/models/tables/user_model.dart';
import "package:epkl/shared/shared_class.dart";
import "package:flutter_secure_storage/flutter_secure_storage.dart";
import "package:http/http.dart" as http;
import "package:epkl/shared/shared_values.dart";

class AuthService {
  Future<UserModel> login(SignInFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse("$apiBaseUrl/login"),
        body: data.toJson(),
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
      return UserModel.fromJson(decodedBody['data']);
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel> register(SignUpFormModel data) async {
    try {
      final res = await http.post(
        Uri.parse("$apiBaseUrl/register"),
        body: data.toJson(),
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) {
        throw ApiErrorException(
          decodedBody["message"],
          data: decodedBody['data'],
        );
      }
      return UserModel.fromJson(decodedBody['data']);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> storeCredential(UserModel user) async {
    const storage = FlutterSecureStorage();
    try {
      await storage.write(key: "password", value: user.password);
      await storage.write(key: "token", value: user.token);
      await storage.write(key: "email", value: user.email);
    } catch (e) {
      rethrow;
    }
  }

  Future<SignInFormModel> getCredential() async {
    const storage = FlutterSecureStorage();
    Map<String, dynamic> values = await storage.readAll();
    try {
      if (values['email'] == null || values['password'] == null)
        throw "!auntheticated";
      return SignInFormModel(
          email: values['email'], password: values['password']);
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getToken() async {
    const storage = FlutterSecureStorage();
    String? token = await storage.read(key: "token");
    if (token == null) return '';
    return 'Bearer $token';
  }

  Future<void> clearCredential() async {
    const storage = FlutterSecureStorage();
    await storage.deleteAll();
  }

  Future<void> logout() async {
    try {
      final token = await getToken();
      final res = await http.post(
        Uri.parse("$apiBaseUrl/logout"),
        headers: {"Authorization": token},
      );
      final decodedBody = jsonDecode(res.body);
      if (res.statusCode >= 300) throw decodedBody['data'];
      await clearCredential();
    } catch (e) {
      rethrow;
    }
  }
}
