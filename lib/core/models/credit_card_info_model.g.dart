// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_card_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditCardInfoImpl _$$CreditCardInfoImplFromJson(Map<String, dynamic> json) =>
    _$CreditCardInfoImpl(
      value: (json['value'] as num).toDouble(),
      brand: json['brand'] as String,
      extract: json['extract'] as String,
    );

Map<String, dynamic> _$$CreditCardInfoImplToJson(
        _$CreditCardInfoImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'brand': instance.brand,
      'extract': instance.extract,
    };
