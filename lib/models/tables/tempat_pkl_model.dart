import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tempat_pkl_model.g.dart';

@JsonSerializable()
@CopyWith()
class TempatPklModel {
  final int? id;
  final String? users_id;
  final String? latitude;
  final String? longitude;
  final String? nama_tempat;

  TempatPklModel({
    this.id,
    this.users_id,
    this.latitude,
    this.longitude,
    this.nama_tempat,
  });

  Map<String, dynamic> toJson() => _$TempatPklModelToJson(this);

  factory TempatPklModel.fromJson(Map<String, dynamic> json) =>
      _$TempatPklModelFromJson(json);
}
