// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_form_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SignInFormModelCWProxy {
  SignInFormModel email(String? email);

  SignInFormModel password(String? password);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SignInFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SignInFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SignInFormModel call({
    String? email,
    String? password,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSignInFormModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSignInFormModel.copyWith.fieldName(...)`
class _$SignInFormModelCWProxyImpl implements _$SignInFormModelCWProxy {
  const _$SignInFormModelCWProxyImpl(this._value);

  final SignInFormModel _value;

  @override
  SignInFormModel email(String? email) => this(email: email);

  @override
  SignInFormModel password(String? password) => this(password: password);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SignInFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SignInFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  SignInFormModel call({
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
  }) {
    return SignInFormModel(
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
    );
  }
}

extension $SignInFormModelCopyWith on SignInFormModel {
  /// Returns a callable class that can be used as follows: `instanceOfSignInFormModel.copyWith(...)` or like so:`instanceOfSignInFormModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SignInFormModelCWProxy get copyWith => _$SignInFormModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInFormModel _$SignInFormModelFromJson(Map<String, dynamic> json) =>
    SignInFormModel(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$SignInFormModelToJson(SignInFormModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
