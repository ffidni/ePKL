// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pkl_steps_model.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PklStepsModelCWProxy {
  PklStepsModel id(int? id);

  PklStepsModel title(String? title);

  PklStepsModel dates(List<String>? dates);

  PklStepsModel order(int? order);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PklStepsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PklStepsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  PklStepsModel call({
    int? id,
    String? title,
    List<String>? dates,
    int? order,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPklStepsModel.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPklStepsModel.copyWith.fieldName(...)`
class _$PklStepsModelCWProxyImpl implements _$PklStepsModelCWProxy {
  const _$PklStepsModelCWProxyImpl(this._value);

  final PklStepsModel _value;

  @override
  PklStepsModel id(int? id) => this(id: id);

  @override
  PklStepsModel title(String? title) => this(title: title);

  @override
  PklStepsModel dates(List<String>? dates) => this(dates: dates);

  @override
  PklStepsModel order(int? order) => this(order: order);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PklStepsModel(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PklStepsModel(...).copyWith(id: 12, name: "My name")
  /// ````
  PklStepsModel call({
    Object? id = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? dates = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
  }) {
    return PklStepsModel(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      dates: dates == const $CopyWithPlaceholder()
          ? _value.dates
          // ignore: cast_nullable_to_non_nullable
          : dates as List<String>?,
      order: order == const $CopyWithPlaceholder()
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as int?,
    );
  }
}

extension $PklStepsModelCopyWith on PklStepsModel {
  /// Returns a callable class that can be used as follows: `instanceOfPklStepsModel.copyWith(...)` or like so:`instanceOfPklStepsModel.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PklStepsModelCWProxy get copyWith => _$PklStepsModelCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PklStepsModel _$PklStepsModelFromJson(Map<String, dynamic> json) =>
    PklStepsModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      dates:
          (json['dates'] as List<dynamic>?)?.map((e) => e as String).toList(),
      order: json['order'] as int?,
    );

Map<String, dynamic> _$PklStepsModelToJson(PklStepsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dates': instance.dates,
      'order': instance.order,
    };
