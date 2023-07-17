// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tugas_form_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TugasFormModelCWProxy {
  TugasFormModel users_id(int? users_id);

  TugasFormModel nama_tugas(String? nama_tugas);

  TugasFormModel prioritas(String? prioritas);

  TugasFormModel deadline(DateTime? deadline);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TugasFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TugasFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TugasFormModel call({
    int? users_id,
    String? nama_tugas,
    String? prioritas,
    DateTime? deadline,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTugasFormModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTugasFormModel.copyWith.fieldName(...)`
class _$TugasFormModelCWProxyImpl implements _$TugasFormModelCWProxy {
  const _$TugasFormModelCWProxyImpl(this._value);

  final TugasFormModel _value;

  @override
  TugasFormModel users_id(int? users_id) => this(users_id: users_id);

  @override
  TugasFormModel nama_tugas(String? nama_tugas) => this(nama_tugas: nama_tugas);

  @override
  TugasFormModel prioritas(String? prioritas) => this(prioritas: prioritas);

  @override
  TugasFormModel deadline(DateTime? deadline) => this(deadline: deadline);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TugasFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TugasFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  TugasFormModel call({
    Object? users_id = const $CopyWithPlaceholder(),
    Object? nama_tugas = const $CopyWithPlaceholder(),
    Object? prioritas = const $CopyWithPlaceholder(),
    Object? deadline = const $CopyWithPlaceholder(),
  }) {
    return TugasFormModel(
      users_id: users_id == const $CopyWithPlaceholder()
          ? _value.users_id
          // ignore: cast_nullable_to_non_nullable
          : users_id as int?,
      nama_tugas: nama_tugas == const $CopyWithPlaceholder()
          ? _value.nama_tugas
          // ignore: cast_nullable_to_non_nullable
          : nama_tugas as String?,
      prioritas: prioritas == const $CopyWithPlaceholder()
          ? _value.prioritas
          // ignore: cast_nullable_to_non_nullable
          : prioritas as String?,
      deadline: deadline == const $CopyWithPlaceholder()
          ? _value.deadline
          // ignore: cast_nullable_to_non_nullable
          : deadline as DateTime?,
    );
  }
}

extension $TugasFormModelCopyWith on TugasFormModel {
  /// Returns a callable class that can be used as follows: `instanceOfTugasFormModel.copyWith(...)` or like so:`instanceOfTugasFormModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TugasFormModelCWProxy get copyWith => _$TugasFormModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TugasFormModel _$TugasFormModelFromJson(Map<String, dynamic> json) =>
    TugasFormModel(
      users_id: json['users_id'] as int?,
      nama_tugas: json['nama_tugas'] as String?,
      prioritas: json['prioritas'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$TugasFormModelToJson(TugasFormModel instance) =>
    <String, dynamic>{
      'users_id': instance.users_id,
      'nama_tugas': instance.nama_tugas,
      'prioritas': instance.prioritas,
      'deadline': instance.deadline?.toIso8601String(),
    };
