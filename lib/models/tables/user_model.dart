import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import "package:copy_with_extension/copy_with_extension.dart";

part 'user_model.g.dart';

@JsonSerializable()
@CopyWith()
class UserModel {
  final int? id;
  final String? nama_lengkap;
  final String? email;
  final String? nis;
  final String? password;
  final String? tipe_user;
  final String? token;

  UserModel({
    required this.id,
    required this.nama_lengkap,
    required this.email,
    required this.nis,
    required this.password,
    required this.tipe_user,
    required this.token,
  });

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
