import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tempat_pkl_form_model.g.dart';

@JsonSerializable()
@CopyWith()
class TempatPklFormModel {
  final int? users_id;
  final String? nama_tempat;
  final double? latitude;
  final double? longitude;

  TempatPklFormModel({
    this.users_id,
    this.nama_tempat,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toJson() => _$TempatPklFormModelToJson(this);

  TempatPklFormModel fromJson(Map<String, dynamic> json) =>
      _$TempatPklFormModelFromJson(json);
}
