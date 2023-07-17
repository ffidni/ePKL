// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_confirmation_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EmailConfirmationModelCWProxy {
  EmailConfirmationModel id(int? id);

  EmailConfirmationModel token(String? token);

  EmailConfirmationModel expires_at(DateTime? expires_at);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EmailConfirmationModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EmailConfirmationModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EmailConfirmationModel call({
    int? id,
    String? token,
    DateTime? expires_at,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEmailConfirmationModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEmailConfirmationModel.copyWith.fieldName(...)`
class _$EmailConfirmationModelCWProxyImpl
    implements _$EmailConfirmationModelCWProxy {
  const _$EmailConfirmationModelCWProxyImpl(this._value);

  final EmailConfirmationModel _value;

  @override
  EmailConfirmationModel id(int? id) => this(id: id);

  @override
  EmailConfirmationModel token(String? token) => this(token: token);

  @override
  EmailConfirmationModel expires_at(DateTime? expires_at) =>
      this(expires_at: expires_at);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EmailConfirmationModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EmailConfirmationModel(...).copyWith(id: 12, name: "My name")
  /// ````
  EmailConfirmationModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? token = const $CopyWithPlaceholder(),
    Object? expires_at = const $CopyWithPlaceholder(),
  }) {
    return EmailConfirmationModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      token: token == const $CopyWithPlaceholder()
          ? _value.token
          // ignore: cast_nullable_to_non_nullable
          : token as String?,
      expires_at: expires_at == const $CopyWithPlaceholder()
          ? _value.expires_at
          // ignore: cast_nullable_to_non_nullable
          : expires_at as DateTime?,
    );
  }
}

extension $EmailConfirmationModelCopyWith on EmailConfirmationModel {
  /// Returns a callable class that can be used as follows: `instanceOfEmailConfirmationModel.copyWith(...)` or like so:`instanceOfEmailConfirmationModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EmailConfirmationModelCWProxy get copyWith =>
      _$EmailConfirmationModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailConfirmationModel _$EmailConfirmationModelFromJson(
        Map<String, dynamic> json) =>
    EmailConfirmationModel(
      id: json['id'] as int?,
      token: json['token'] as String?,
      expires_at: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$EmailConfirmationModelToJson(
        EmailConfirmationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'expires_at': instance.expires_at?.toIso8601String(),
    };
