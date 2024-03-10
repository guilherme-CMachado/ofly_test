import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';
import 'package:ofly_tech_test/features/card/card_page.dart';

class CardService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  String userCollectionPath = 'users';

  Future<void> addCreditCard(
      CreditCardModel cardModel, String uid, BuildContext context) async {
    try {
      DocumentReference userDocRef =
          _firestore.collection(userCollectionPath).doc(uid);
      await userDocRef.update({
        'creditCardModel': cardModel.toMap(),
      });
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CardPage(
                cardModel: cardModel,
              )));
    } catch (e) {
      print('Erro ao adicionar cartão de crédito: $e');
      ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
        SnackBar(
          content: Text(
              'Erro ao adicionar cartão de crédito. Tente novamente mais tarde.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
