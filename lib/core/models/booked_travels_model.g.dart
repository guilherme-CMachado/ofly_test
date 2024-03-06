// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booked_travels_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookedTravelsModelImpl _$$BookedTravelsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookedTravelsModelImpl(
      airline: json['airline'] as String,
      airport: json['airport'] as String,
      flightcard: json['flightcard'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$BookedTravelsModelImplToJson(
        _$BookedTravelsModelImpl instance) =>
    <String, dynamic>{
      'airline': instance.airline,
      'airport': instance.airport,
      'flightcard': instance.flightcard,
      'uid': instance.uid,
    };
