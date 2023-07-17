// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_form_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SignUpFormModelCWProxy {
  SignUpFormModel nama_lengkap(String? nama_lengkap);

  SignUpFormModel email(String? email);

  SignUpFormModel nis(String? nis);

  SignUpFormModel password(String? password);

  SignUpFormModel tipe_user(String? tipe_user);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SignUpFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SignUpFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SignUpFormModel call({
    String? nama_lengkap,
    String? email,
    String? nis,
    String? password,
    String? tipe_user,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSignUpFormModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSignUpFormModel.copyWith.fieldName(...)`
class _$SignUpFormModelCWProxyImpl implements _$SignUpFormModelCWProxy {
  const _$SignUpFormModelCWProxyImpl(this._value);

  final SignUpFormModel _value;

  @override
  SignUpFormModel nama_lengkap(String? nama_lengkap) =>
      this(nama_lengkap: nama_lengkap);

  @override
  SignUpFormModel email(String? email) => this(email: email);

  @override
  SignUpFormModel nis(String? nis) => this(nis: nis);

  @override
  SignUpFormModel password(String? password) => this(password: password);

  @override
  SignUpFormModel tipe_user(String? tipe_user) => this(tipe_user: tipe_user);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SignUpFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SignUpFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SignUpFormModel call({
    Object? nama_lengkap = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? nis = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? tipe_user = const $CopyWithPlaceholder(),
  }) {
    return SignUpFormModel(
      nama_lengkap: nama_lengkap == const $CopyWithPlaceholder()
          ? _value.nama_lengkap
          // ignore: cast_nullable_to_non_nullable
          : nama_lengkap as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      nis: nis == const $CopyWithPlaceholder()
          ? _value.nis
          // ignore: cast_nullable_to_non_nullable
          : nis as String?,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
      tipe_user: tipe_user == const $CopyWithPlaceholder()
          ? _value.tipe_user
          // ignore: cast_nullable_to_non_nullable
          : tipe_user as String?,
    );
  }
}

extension $SignUpFormModelCopyWith on SignUpFormModel {
  /// Returns a callable class that can be used as follows: `instanceOfSignUpFormModel.copyWith(...)` or like so:`instanceOfSignUpFormModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SignUpFormModelCWProxy get copyWith => _$SignUpFormModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpFormModel _$SignUpFormModelFromJson(Map<String, dynamic> json) =>
    SignUpFormModel(
      nama_lengkap: json['nama_lengkap'] as String?,
      email: json['email'] as String?,
      nis: json['nis'] as String?,
      password: json['password'] as String?,
      tipe_user: json['tipe_user'] as String?,
    );

Map<String, dynamic> _$SignUpFormModelToJson(SignUpFormModel instance) =>
    <String, dynamic>{
      'nama_lengkap': instance.nama_lengkap,
      'email': instance.email,
      'nis': instance.nis,
      'password': instance.password,
      'tipe_user': instance.tipe_user,
    };
