import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tugas_form_model.g.dart';

@JsonSerializable()
@CopyWith()
class TugasFormModel {
  final int? users_id;
  final String? nama_tugas;
  final String? prioritas;
  final DateTime? deadline;

  TugasFormModel({
    this.users_id,
    this.nama_tugas,
    this.prioritas,
    this.deadline,
  });

  Map<String, dynamic> toJson() => _$TugasFormModelToJson(this);

  TugasFormModel fromJson(Map<String, dynamic> json) =>
      _$TugasFormModelFromJson(json);
}
