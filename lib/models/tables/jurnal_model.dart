import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'jurnal_model.g.dart';

@JsonSerializable()
@CopyWith()
class JurnalModel {
  final int? id;
  final String? users_id;
  final DateTime? date;
  final String? title;
  final String? desc;
  final String? content;

  JurnalModel({
    this.id,
    this.users_id,
    this.date,
    this.title,
    this.desc,
    this.content,
  });

  Map<String, dynamic> toJson() => _$JurnalModelToJson(this);

  factory JurnalModel.fromJson(Map<String, dynamic> json) =>
      _$JurnalModelFromJson(json);
}
