import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';

class CardService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  String userCollectionPath = 'users';

  Future<List<CreditCardModel>> addCreditCard(
      CreditCardModel cardModel,
      String uid,
      List<CreditCardModel>? currentCards,
      BuildContext context) async {
    try {
      DocumentReference userDocRef =
          _firestore.collection(userCollectionPath).doc(uid);
      currentCards ??= [];
      currentCards.add(cardModel);
      await userDocRef.update({
        'creditCardModel': currentCards.map((x) => x.toMap()).toList(),
      });
      Navigator.of(context).pop(currentCards);
      return currentCards;
    } catch (e) {
      print('Erro ao adicionar cartão de crédito: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              'Erro ao adicionar cartão de crédito. Tente novamente mais tarde.'),
          backgroundColor: Colors.red,
        ),
      );
      return currentCards ?? [];
    }
  }
}
