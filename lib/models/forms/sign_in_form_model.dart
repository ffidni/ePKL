import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_in_form_model.g.dart';

@JsonSerializable()
@CopyWith()
class SignInFormModel {
  final String? email;
  final String? password;

  SignInFormModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() => _$SignInFormModelToJson(this);

  SignInFormModel fromJson(Map<String, dynamic> json) =>
      _$SignInFormModelFromJson(json);
}
