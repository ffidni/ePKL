// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tempat_pkl_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TempatPklModelCWProxy {
  TempatPklModel id(int? id);

  TempatPklModel users_id(String? users_id);

  TempatPklModel latitude(String? latitude);

  TempatPklModel longitude(String? longitude);

  TempatPklModel nama_tempat(String? nama_tempat);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TempatPklModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TempatPklModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TempatPklModel call({
    int? id,
    String? users_id,
    String? latitude,
    String? longitude,
    String? nama_tempat,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTempatPklModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTempatPklModel.copyWith.fieldName(...)`
class _$TempatPklModelCWProxyImpl implements _$TempatPklModelCWProxy {
  const _$TempatPklModelCWProxyImpl(this._value);

  final TempatPklModel _value;

  @override
  TempatPklModel id(int? id) => this(id: id);

  @override
  TempatPklModel users_id(String? users_id) => this(users_id: users_id);

  @override
  TempatPklModel latitude(String? latitude) => this(latitude: latitude);

  @override
  TempatPklModel longitude(String? longitude) => this(longitude: longitude);

  @override
  TempatPklModel nama_tempat(String? nama_tempat) =>
      this(nama_tempat: nama_tempat);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TempatPklModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TempatPklModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TempatPklModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? users_id = const $CopyWithPlaceholder(),
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
    Object? nama_tempat = const $CopyWithPlaceholder(),
  }) {
    return TempatPklModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      users_id: users_id == const $CopyWithPlaceholder()
          ? _value.users_id
          // ignore: cast_nullable_to_non_nullable
          : users_id as String?,
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

extension $TempatPklModelCopyWith on TempatPklModel {
  /// Returns a callable class that can be used as follows: `instanceOfTempatPklModel.copyWith(...)` or like so:`instanceOfTempatPklModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TempatPklModelCWProxy get copyWith => _$TempatPklModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TempatPklModel _$TempatPklModelFromJson(Map<String, dynamic> json) =>
    TempatPklModel(
      id: json['id'] as int?,
      users_id: json['users_id'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      nama_tempat: json['nama_tempat'] as String?,
    );

Map<String, dynamic> _$TempatPklModelToJson(TempatPklModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users_id': instance.users_id,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'nama_tempat': instance.nama_tempat,
    };
