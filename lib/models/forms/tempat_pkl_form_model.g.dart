// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tempat_pkl_form_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TempatPklFormModelCWProxy {
  TempatPklFormModel users_id(int? users_id);

  TempatPklFormModel nama_tempat(String? nama_tempat);

  TempatPklFormModel latitude(double? latitude);

  TempatPklFormModel longitude(double? longitude);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TempatPklFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TempatPklFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TempatPklFormModel call({
    int? users_id,
    String? nama_tempat,
    double? latitude,
    double? longitude,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTempatPklFormModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTempatPklFormModel.copyWith.fieldName(...)`
class _$TempatPklFormModelCWProxyImpl implements _$TempatPklFormModelCWProxy {
  const _$TempatPklFormModelCWProxyImpl(this._value);

  final TempatPklFormModel _value;

  @override
  TempatPklFormModel users_id(int? users_id) => this(users_id: users_id);

  @override
  TempatPklFormModel nama_tempat(String? nama_tempat) =>
      this(nama_tempat: nama_tempat);

  @override
  TempatPklFormModel latitude(double? latitude) => this(latitude: latitude);

  @override
  TempatPklFormModel longitude(double? longitude) => this(longitude: longitude);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TempatPklFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TempatPklFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TempatPklFormModel call({
    Object? users_id = const $CopyWithPlaceholder(),
    Object? nama_tempat = const $CopyWithPlaceholder(),
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
  }) {
    return TempatPklFormModel(
      users_id: users_id == const $CopyWithPlaceholder()
          ? _value.users_id
          // ignore: cast_nullable_to_non_nullable
          : users_id as int?,
      nama_tempat: nama_tempat == const $CopyWithPlaceholder()
          ? _value.nama_tempat
          // ignore: cast_nullable_to_non_nullable
          : nama_tempat as String?,
      latitude: latitude == const $CopyWithPlaceholder()
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double?,
      longitude: longitude == const $CopyWithPlaceholder()
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double?,
    );
  }
}

extension $TempatPklFormModelCopyWith on TempatPklFormModel {
  /// Returns a callable class that can be used as follows: `instanceOfTempatPklFormModel.copyWith(...)` or like so:`instanceOfTempatPklFormModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TempatPklFormModelCWProxy get copyWith =>
      _$TempatPklFormModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TempatPklFormModel _$TempatPklFormModelFromJson(Map<String, dynamic> json) =>
    TempatPklFormModel(
      users_id: json['users_id'] as int?,
      nama_tempat: json['nama_tempat'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TempatPklFormModelToJson(TempatPklFormModel instance) =>
    <String, dynamic>{
      'users_id': instance.users_id,
      'nama_tempat': instance.nama_tempat,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
