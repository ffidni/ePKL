import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_form_model.g.dart';

@JsonSerializable()
@CopyWith()
class SignUpFormModel {
  final String? nama_lengkap;
  final String? email;
  final String? nis;
  final String? password;
  final String? tipe_user;

  SignUpFormModel({
    this.nama_lengkap,
    this.email,
    this.nis,
    this.password,
    this.tipe_user,
  });

  Map<String, dynamic> toJson() => _$SignUpFormModelToJson(this);

  SignUpFormModel fromJson(Map<String, dynamic> json) =>
      _$SignUpFormModelFromJson(json);
}
