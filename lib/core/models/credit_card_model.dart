import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CreditCardModel {
  final String flag;
  final num extract;
  final String cardNumber;
  CreditCardModel({
    required this.flag,
    required this.extract,
    required this.cardNumber,
  });

  CreditCardModel copyWith({
    String? flag,
    num? extract,
    String? cardNumber,
  }) {
    return CreditCardModel(
      flag: flag ?? this.flag,
      extract: extract ?? this.extract,
      cardNumber: cardNumber ?? this.cardNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flag': flag,
      'extract': extract,
      'cardNumber': cardNumber,
    };
  }

  factory CreditCardModel.fromMap(Map<String, dynamic> map) {
    return CreditCardModel(
      flag: map['flag'] as String,
      extract: map['extract'] as num,
      cardNumber: map['cardNumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreditCardModel.fromJson(String source) =>
      CreditCardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'CredCardModel(flag: $flag, extract: $extract, cardNumber: $cardNumber)';

  @override
  bool operator ==(covariant CreditCardModel other) {
    if (identical(this, other)) return true;

    return other.flag == flag &&
        other.extract == extract &&
        other.cardNumber == cardNumber;
  }

  @override
  int get hashCode => flag.hashCode ^ extract.hashCode ^ cardNumber.hashCode;
}
