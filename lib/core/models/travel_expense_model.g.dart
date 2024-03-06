// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_expense_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelExpenseModelImpl _$$TravelExpenseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelExpenseModelImpl(
      date: DateTime.parse(json['date'] as String),
      amount: (json['amount'] as num).toDouble(),
      category: json['category'] as String,
      description: json['description'] as String,
      synced: json['synced'] as bool,
    );

Map<String, dynamic> _$$TravelExpenseModelImplToJson(
        _$TravelExpenseModelImpl instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'amount': instance.amount,
      'category': instance.category,
      'description': instance.description,
      'synced': instance.synced,
    };
