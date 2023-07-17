import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pkl_steps_model.g.dart';

@JsonSerializable()
@CopyWith()
class PklStepsModel {
  final int? id;
  final String? title;
  final List<String>? dates;
  final int? order;

  PklStepsModel({
    this.id,
    this.title,
    this.dates,
    this.order,
  });

  Map<String, dynamic> toJson() => _$PklStepsModelToJson(this);

  factory PklStepsModel.fromJson(Map<String, dynamic> json) =>
      _$PklStepsModelFromJson(json);
}
