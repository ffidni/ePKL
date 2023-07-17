import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tempat_pkl_suggestions_model.g.dart';

@JsonSerializable()
@CopyWith()
class TempatPklSuggestionsModel {
  final int? id;
  final String? latitude;
  final String? longitude;
  final String? nama_tempat;

  TempatPklSuggestionsModel({
    this.id,
    this.latitude,
    this.longitude,
    this.nama_tempat,
  });

  Map<String, dynamic> toJson() => _$TempatPklSuggestionsModelToJson(this);

  factory TempatPklSuggestionsModel.fromJson(Map<String, dynamic> json) =>
      _$TempatPklSuggestionsModelFromJson(json);
}
