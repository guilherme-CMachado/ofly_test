import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'travel.freezed.dart';
part 'travel.g.dart';

@freezed
class Travel with _$Travel {
  const factory Travel({
    required String company,
    required String airport,
    required String ticket,
  }) = _Travel;

  factory Travel.fromJson(Map<String, Object?> json) => _$TravelFromJson(json);
}
