import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel.freezed.dart';
part 'travel.g.dart';

@freezed
class Travel with _$Travel {
  const factory Travel(
      {required String company,
      required String airport,
      required String departure,
      required String arrival,
      required Duration? duration}) = _Travel;

  factory Travel.fromJson(Map<String, Object?> json) => _$TravelFromJson(json);
}
