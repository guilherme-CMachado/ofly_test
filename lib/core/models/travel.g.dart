// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelImpl _$$TravelImplFromJson(Map<String, dynamic> json) => _$TravelImpl(
      company: json['company'] as String,
      airport: json['airport'] as String,
      departure: json['departure'] as String,
      arrival: json['arrival'] as String,
      duration: json['duration'] == null
          ? null
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$TravelImplToJson(_$TravelImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'airport': instance.airport,
      'departure': instance.departure,
      'arrival': instance.arrival,
      'duration': instance.duration?.inMicroseconds,
    };
