// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';

class UserModel {
  final String email;
  final String uid;
  final String userName;
  CreditCardModel? creditCardModel;
  List<BookedTravelsModel>? bookedTravelsModel;
  UserModel({
    required this.email,
    required this.uid,
    required this.userName,
    this.creditCardModel,
    this.bookedTravelsModel,
  });

  UserModel copyWith({
    String? email,
    String? uid,
    String? userName,
    CreditCardModel? creditCardModel,
    List<BookedTravelsModel>? bookedTravelsModel,
  }) {
    return UserModel(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      userName: userName ?? this.userName,
      creditCardModel: creditCardModel ?? this.creditCardModel,
      bookedTravelsModel: bookedTravelsModel ?? this.bookedTravelsModel,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'uid': uid,
      'userName': userName,
      'creditCardModel': creditCardModel?.toMap(),
      'bookedTravelsModel': bookedTravelsModel?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      uid: map['uid'] as String,
      userName: map['userName'] as String,
      creditCardModel: map['creditCardModel'] != null
          ? CreditCardModel.fromMap(
              map['creditCardModel'] as Map<String, dynamic>)
          : null,
      bookedTravelsModel: map['bookedTravelsModel'] != null
          ? List<BookedTravelsModel>.from(
              (map['bookedTravelsModel'] as List).map<BookedTravelsModel?>(
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
    return 'UserModel(email: $email, uid: $uid, userName: $userName, creditCardModel: $creditCardModel, bookedTravelsModel: $bookedTravelsModel)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.uid == uid &&
        other.userName == userName &&
        other.creditCardModel == creditCardModel &&
        listEquals(other.bookedTravelsModel, bookedTravelsModel);
  }

  @override
  int get hashCode {
    return email.hashCode ^
        uid.hashCode ^
        userName.hashCode ^
        creditCardModel.hashCode ^
        bookedTravelsModel.hashCode;
  }
}
