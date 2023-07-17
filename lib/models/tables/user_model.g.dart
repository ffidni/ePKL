// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserModelCWProxy {
  UserModel id(int? id);

  UserModel nama_lengkap(String? nama_lengkap);

  UserModel email(String? email);

  UserModel nis(String? nis);

  UserModel password(String? password);

  UserModel tipe_user(String? tipe_user);

  UserModel token(String? token);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    int? id,
    String? nama_lengkap,
    String? email,
    String? nis,
    String? password,
    String? tipe_user,
    String? token,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUserModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUserModel.copyWith.fieldName(...)`
class _$UserModelCWProxyImpl implements _$UserModelCWProxy {
  const _$UserModelCWProxyImpl(this._value);

  final UserModel _value;

  @override
  UserModel id(int? id) => this(id: id);

  @override
  UserModel nama_lengkap(String? nama_lengkap) =>
      this(nama_lengkap: nama_lengkap);

  @override
  UserModel email(String? email) => this(email: email);

  @override
  UserModel nis(String? nis) => this(nis: nis);

  @override
  UserModel password(String? password) => this(password: password);

  @override
  UserModel tipe_user(String? tipe_user) => this(tipe_user: tipe_user);

  @override
  UserModel token(String? token) => this(token: token);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UserModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UserModel(...).copyWith(id: 12, name: "My name")
  /// ````
  UserModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? nama_lengkap = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? nis = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? tipe_user = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
  }) {
    return UserModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
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
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String?,
    );
  }
}

extension $UserModelCopyWith on UserModel {
  /// Returns a callable class that can be used as follows: `instanceOfUserModel.copyWith(...)` or like so:`instanceOfUserModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserModelCWProxy get copyWith => _$UserModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as int?,
      nama_lengkap: json['nama_lengkap'] as String?,
      email: json['email'] as String?,
      nis: json['nis'] as String?,
      password: json['password'] as String?,
      tipe_user: json['tipe_user'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.nama_lengkap,
      'email': instance.email,
      'nis': instance.nis,
      'password': instance.password,
      'tipe_user': instance.tipe_user,
      'token': instance.token,
    };
