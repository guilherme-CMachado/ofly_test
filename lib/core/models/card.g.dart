// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      number: json['number'] as String,
      ownerName: json['ownerName'] as String,
      cardModel: $enumDecode(_$CardModelEnumMap, json['cardModel']),
      cardFlag: $enumDecode(_$CardFlagEnumMap, json['cardFlag']),
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'ownerName': instance.ownerName,
      'cardModel': _$CardModelEnumMap[instance.cardModel]!,
      'cardFlag': _$CardFlagEnumMap[instance.cardFlag]!,
    };

const _$CardModelEnumMap = {
  CardModel.debit: 'debit',
  CardModel.credit: 'credit',
};

const _$CardFlagEnumMap = {
  CardFlag.mastercard: 'mastercard',
  CardFlag.visa: 'visa',
  CardFlag.elo: 'elo',
};
