import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel_expense_model.freezed.dart';
part 'travel_expense_model.g.dart';

@freezed
class TravelExpenseModel with _$TravelExpenseModel {
  const factory TravelExpenseModel({
    required DateTime date,
    required double amount,
    required String category,
    required String description,
    required bool synced,
  }) = _TravelExpenseModel;

  factory TravelExpenseModel.fromJson(Map<String, Object?> json) =>
      _$TravelExpenseModelFromJson(json);
}
