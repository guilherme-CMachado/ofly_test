import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'credit_card_info_model.freezed.dart';
part 'credit_card_info_model.g.dart';

@freezed
class CreditCardInfo with _$CreditCardInfo {
  const factory CreditCardInfo({
    required double value,
    required String brand,
    required String extract,
  }) = _CreditCardInfo;

  factory CreditCardInfo.fromJson(Map<String, dynamic> json) =>
      _$CreditCardInfoFromJson(json);
}
