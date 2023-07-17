// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tempat_pkl_suggestions_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TempatPklSuggestionsModelCWProxy {
  TempatPklSuggestionsModel id(int? id);

  TempatPklSuggestionsModel latitude(String? latitude);

  TempatPklSuggestionsModel longitude(String? longitude);

  TempatPklSuggestionsModel nama_tempat(String? nama_tempat);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TempatPklSuggestionsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TempatPklSuggestionsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TempatPklSuggestionsModel call({
    int? id,
    String? latitude,
    String? longitude,
    String? nama_tempat,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTempatPklSuggestionsModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTempatPklSuggestionsModel.copyWith.fieldName(...)`
class _$TempatPklSuggestionsModelCWProxyImpl
    implements _$TempatPklSuggestionsModelCWProxy {
  const _$TempatPklSuggestionsModelCWProxyImpl(this._value);

  final TempatPklSuggestionsModel _value;

  @override
  TempatPklSuggestionsModel id(int? id) => this(id: id);

  @override
  TempatPklSuggestionsModel latitude(String? latitude) =>
      this(latitude: latitude);

  @override
  TempatPklSuggestionsModel longitude(String? longitude) =>
      this(longitude: longitude);

  @override
  TempatPklSuggestionsModel nama_tempat(String? nama_tempat) =>
      this(nama_tempat: nama_tempat);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TempatPklSuggestionsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TempatPklSuggestionsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TempatPklSuggestionsModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
    Object? nama_tempat = const $CopyWithPlaceholder(),
  }) {
    return TempatPklSuggestionsModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      latitude: latitude == const $CopyWithPlaceholder()
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as String?,
      longitude: longitude == const $CopyWithPlaceholder()
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as String?,
      nama_tempat: nama_tempat == const $CopyWithPlaceholder()
          ? _value.nama_tempat
          // ignore: cast_nullable_to_non_nullable
          : nama_tempat as String?,
    );
  }
}

extension $TempatPklSuggestionsModelCopyWith on TempatPklSuggestionsModel {
  /// Returns a callable class that can be used as follows: `instanceOfTempatPklSuggestionsModel.copyWith(...)` or like so:`instanceOfTempatPklSuggestionsModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TempatPklSuggestionsModelCWProxy get copyWith =>
      _$TempatPklSuggestionsModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TempatPklSuggestionsModel _$TempatPklSuggestionsModelFromJson(
        Map<String, dynamic> json) =>
    TempatPklSuggestionsModel(
      id: json['id'] as int?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      nama_tempat: json['nama_tempat'] as String?,
    );

Map<String, dynamic> _$TempatPklSuggestionsModelToJson(
        TempatPklSuggestionsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'nama_tempat': instance.nama_tempat,
    };
