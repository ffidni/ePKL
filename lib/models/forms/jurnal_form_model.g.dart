// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jurnal_form_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JurnalFormModelCWProxy {
  JurnalFormModel users_id(int? users_id);

  JurnalFormModel title(String? title);

  JurnalFormModel desc(String? desc);

  JurnalFormModel content(String? content);

  JurnalFormModel date(DateTime? date);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JurnalFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JurnalFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  JurnalFormModel call({
    int? users_id,
    String? title,
    String? desc,
    String? content,
    DateTime? date,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJurnalFormModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJurnalFormModel.copyWith.fieldName(...)`
class _$JurnalFormModelCWProxyImpl implements _$JurnalFormModelCWProxy {
  const _$JurnalFormModelCWProxyImpl(this._value);

  final JurnalFormModel _value;

  @override
  JurnalFormModel users_id(int? users_id) => this(users_id: users_id);

  @override
  JurnalFormModel title(String? title) => this(title: title);

  @override
  JurnalFormModel desc(String? desc) => this(desc: desc);

  @override
  JurnalFormModel content(String? content) => this(content: content);

  @override
  JurnalFormModel date(DateTime? date) => this(date: date);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JurnalFormModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JurnalFormModel(...).copyWith(id: 12, name: "My name")
  /// ````
  JurnalFormModel call({
    Object? users_id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? desc = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
  }) {
    return JurnalFormModel(
      users_id: users_id == const $CopyWithPlaceholder()
          ? _value.users_id
          // ignore: cast_nullable_to_non_nullable
          : users_id as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      desc: desc == const $CopyWithPlaceholder()
          ? _value.desc
          // ignore: cast_nullable_to_non_nullable
          : desc as String?,
      content: content == const $CopyWithPlaceholder()
          ? _value.content
          // ignore: cast_nullable_to_non_nullable
          : content as String?,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
    );
  }
}

extension $JurnalFormModelCopyWith on JurnalFormModel {
  /// Returns a callable class that can be used as follows: `instanceOfJurnalFormModel.copyWith(...)` or like so:`instanceOfJurnalFormModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JurnalFormModelCWProxy get copyWith => _$JurnalFormModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JurnalFormModel _$JurnalFormModelFromJson(Map<String, dynamic> json) =>
    JurnalFormModel(
      users_id: json['users_id'] as int?,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      content: json['content'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$JurnalFormModelToJson(JurnalFormModel instance) =>
    <String, dynamic>{
      'users_id': instance.users_id,
      'title': instance.title,
      'desc': instance.desc,
      'content': instance.content,
      'date': instance.date?.toIso8601String(),
    };
