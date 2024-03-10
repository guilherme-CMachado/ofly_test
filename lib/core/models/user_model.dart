import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';

class UserModel {
  final String email;
  final String uid;
  final String userName;
  List<CreditCardModel>? creditCardModels;
  List<BookedTravelsModel>? bookedTravels;

  UserModel({
    required this.email,
    required this.uid,
    required this.userName,
    this.creditCardModels,
    this.bookedTravels,
  });

  UserModel copyWith({
    String? email,
    String? uid,
    String? userName,
    List<CreditCardModel>? creditCardModels,
    List<BookedTravelsModel>? bookedTravels,
  }) {
    return UserModel(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      userName: userName ?? this.userName,
      creditCardModels: creditCardModels ?? this.creditCardModels,
      bookedTravels: bookedTravels ?? this.bookedTravels,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'uid': uid,
      'userName': userName,
      'creditCardModels': creditCardModels?.map((x) => x.toMap()).toList(),
      'bookedTravels': bookedTravels?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      uid: map['uid'] as String,
      userName: map['userName'] as String,
      creditCardModels: map['creditCardModels'] != null
          ? List<CreditCardModel>.from(
              (map['creditCardModels'] as List<dynamic>).map<CreditCardModel>(
                (x) => CreditCardModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      bookedTravels: map['bookedTravels'] != null
          ? List<BookedTravelsModel>.from(
              (map['bookedTravels'] as List<dynamic>).map<BookedTravelsModel>(
                (x) => BookedTravelsModel.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(email: $email, uid: $uid, userName: $userName, creditCardModels: $creditCardModels, bookedTravels: $bookedTravels)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.uid == uid &&
        other.userName == userName &&
        listEquals(other.creditCardModels, creditCardModels) &&
        listEquals(other.bookedTravels, bookedTravels);
  }

  @override
  int get hashCode {
    return email.hashCode ^
        uid.hashCode ^
        userName.hashCode ^
        creditCardModels.hashCode ^
        bookedTravels.hashCode;
  }
}
