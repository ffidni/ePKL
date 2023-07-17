// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jurnal_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$JurnalModelCWProxy {
  JurnalModel id(int? id);

  JurnalModel users_id(String? users_id);

  JurnalModel date(DateTime? date);

  JurnalModel title(String? title);

  JurnalModel desc(String? desc);

  JurnalModel content(String? content);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JurnalModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JurnalModel(...).copyWith(id: 12, name: "My name")
  /// ````
  JurnalModel call({
    int? id,
    String? users_id,
    DateTime? date,
    String? title,
    String? desc,
    String? content,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfJurnalModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfJurnalModel.copyWith.fieldName(...)`
class _$JurnalModelCWProxyImpl implements _$JurnalModelCWProxy {
  const _$JurnalModelCWProxyImpl(this._value);

  final JurnalModel _value;

  @override
  JurnalModel id(int? id) => this(id: id);

  @override
  JurnalModel users_id(String? users_id) => this(users_id: users_id);

  @override
  JurnalModel date(DateTime? date) => this(date: date);

  @override
  JurnalModel title(String? title) => this(title: title);

  @override
  JurnalModel desc(String? desc) => this(desc: desc);

  @override
  JurnalModel content(String? content) => this(content: content);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `JurnalModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// JurnalModel(...).copyWith(id: 12, name: "My name")
  /// ````
  JurnalModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? users_id = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? desc = const $CopyWithPlaceholder(),
    Object? content = const $CopyWithPlaceholder(),
  }) {
    return JurnalModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      users_id: users_id == const $CopyWithPlaceholder()
          ? _value.users_id
          // ignore: cast_nullable_to_non_nullable
          : users_id as String?,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
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
    );
  }
}

extension $JurnalModelCopyWith on JurnalModel {
  /// Returns a callable class that can be used as follows: `instanceOfJurnalModel.copyWith(...)` or like so:`instanceOfJurnalModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$JurnalModelCWProxy get copyWith => _$JurnalModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JurnalModel _$JurnalModelFromJson(Map<String, dynamic> json) => JurnalModel(
      id: json['id'] as int?,
      users_id: json['users_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$JurnalModelToJson(JurnalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users_id': instance.users_id,
      'date': instance.date?.toIso8601String(),
      'title': instance.title,
      'desc': instance.desc,
      'content': instance.content,
    };
