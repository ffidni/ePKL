import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tugas_model.g.dart';

@JsonSerializable()
@CopyWith()
class TugasModel {
  final int? id;
  final String? users_id;
  final String? nama_tugas;
  final String? prioritas;
  final int? is_checked;

  TugasModel({
    this.id,
    this.users_id,
    this.nama_tugas,
    this.prioritas,
    this.is_checked,
  });

  Map<String, dynamic> toJson() => _$TugasModelToJson(this);

  factory TugasModel.fromJson(Map<String, dynamic> json) =>
      _$TugasModelFromJson(json);
}
