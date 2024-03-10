import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';

class CardTile extends StatelessWidget {
  final CreditCardModel? cardModel;
  const CardTile({super.key, this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Text("Número do cartão: "),
            trailing: Text("${cardModel!.cardNumber}"),
          ),
          ListTile(
            leading: Text("Bandeira: "),
            trailing: Text("${cardModel!.flag}"),
          ),
          ListTile(
            leading: Text("Limite disponibilizado: "),
            trailing: Text("${cardModel!.extract}"),
          ),
        ],
      ),
    );
  }
}
