import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'jurnal_form_model.g.dart';

@JsonSerializable()
@CopyWith()
class JurnalFormModel {
  final int? users_id;
  final String? title;
  final String? desc;
  final String? content;
  final DateTime? date;

  JurnalFormModel({
    this.users_id,
    this.title,
    this.desc,
    this.content,
    this.date,
  });

  Map<String, dynamic> toJson() => _$JurnalFormModelToJson(this);

  JurnalFormModel fromJson(Map<String, dynamic> json) =>
      _$JurnalFormModelFromJson(json);
}
