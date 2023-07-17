import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'email_confirmation_model.g.dart';

@JsonSerializable()
@CopyWith()
class EmailConfirmationModel {
  final int? id;
  final String? token;
  final DateTime? expires_at;

  EmailConfirmationModel({
    this.id,
    this.token,
    this.expires_at,
  });

  Map<String, dynamic> toJson() => _$EmailConfirmationModelToJson(this);

  factory EmailConfirmationModel.fromJson(Map<String, dynamic> json) =>
      _$EmailConfirmationModelFromJson(json);
}
