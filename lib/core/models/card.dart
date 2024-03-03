// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'card.freezed.dart';
part 'card.g.dart';

enum CardModel { debit, credit }

enum CardFlag { mastercard, visa, elo }

@freezed
class Card with _$Card {
  const factory Card({
    required String number,
    required String ownerName,
    required CardModel cardModel,
    required CardFlag cardFlag,
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json) => _$CardFromJson(json);
}
