// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tugas_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TugasModelCWProxy {
  TugasModel id(int? id);

  TugasModel users_id(String? users_id);

  TugasModel nama_tugas(String? nama_tugas);

  TugasModel prioritas(String? prioritas);

  TugasModel is_checked(int? is_checked);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TugasModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TugasModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TugasModel call({
    int? id,
    String? users_id,
    String? nama_tugas,
    String? prioritas,
    int? is_checked,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTugasModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTugasModel.copyWith.fieldName(...)`
class _$TugasModelCWProxyImpl implements _$TugasModelCWProxy {
  const _$TugasModelCWProxyImpl(this._value);

  final TugasModel _value;

  @override
  TugasModel id(int? id) => this(id: id);

  @override
  TugasModel users_id(String? users_id) => this(users_id: users_id);

  @override
  TugasModel nama_tugas(String? nama_tugas) => this(nama_tugas: nama_tugas);

  @override
  TugasModel prioritas(String? prioritas) => this(prioritas: prioritas);

  @override
  TugasModel is_checked(int? is_checked) => this(is_checked: is_checked);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TugasModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TugasModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TugasModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? users_id = const $CopyWithPlaceholder(),
    Object? nama_tugas = const $CopyWithPlaceholder(),
    Object? prioritas = const $CopyWithPlaceholder(),
    Object? is_checked = const $CopyWithPlaceholder(),
  }) {
    return TugasModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      users_id: users_id == const $CopyWithPlaceholder()
          ? _value.users_id
          // ignore: cast_nullable_to_non_nullable
          : users_id as String?,
      nama_tugas: nama_tugas == const $CopyWithPlaceholder()
          ? _value.nama_tugas
          // ignore: cast_nullable_to_non_nullable
          : nama_tugas as String?,
      prioritas: prioritas == const $CopyWithPlaceholder()
          ? _value.prioritas
          // ignore: cast_nullable_to_non_nullable
          : prioritas as String?,
      is_checked: is_checked == const $CopyWithPlaceholder()
          ? _value.is_checked
          // ignore: cast_nullable_to_non_nullable
          : is_checked as int?,
    );
  }
}

extension $TugasModelCopyWith on TugasModel {
  /// Returns a callable class that can be used as follows: `instanceOfTugasModel.copyWith(...)` or like so:`instanceOfTugasModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TugasModelCWProxy get copyWith => _$TugasModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TugasModel _$TugasModelFromJson(Map<String, dynamic> json) => TugasModel(
      id: json['id'] as int?,
      users_id: json['users_id'] as String?,
      nama_tugas: json['nama_tugas'] as String?,
      prioritas: json['prioritas'] as String?,
      is_checked: json['is_checked'] as int?,
    );

Map<String, dynamic> _$TugasModelToJson(TugasModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users_id': instance.users_id,
      'nama_tugas': instance.nama_tugas,
      'prioritas': instance.prioritas,
      'is_checked': instance.is_checked,
    };
