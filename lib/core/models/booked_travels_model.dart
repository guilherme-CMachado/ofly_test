import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'booked_travels_model.freezed.dart';
part 'booked_travels_model.g.dart';

@freezed
abstract class BookedTravelsModel with _$BookedTravelsModel {
  const factory BookedTravelsModel({
    required String airline,
    required String airport,
    required String flightcard,
    required String uid,
  }) = _BookedTravelsModel;

  factory BookedTravelsModel.fromJson(Map<String, dynamic> json) =>
      _$BookedTravelsModelFromJson(json);
}
