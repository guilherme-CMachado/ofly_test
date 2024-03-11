// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ofly_tech_test/core/models/credit_card_model.dart';

class CreditCardTile extends StatelessWidget {
  final CreditCardModel? cardModel;
  const CreditCardTile({
    Key? key,
    this.cardModel,
  }) : super(key: key);

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
//   final CreditCardModel? cardModel;
//   const CardTile({super.key, this.cardModel});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: [
//           ListTile(
//             leading: Text("Número do cartão: "),
//             trailing: Text("${cardModel!.cardNumber}"),
//           ),
//           ListTile(
//             leading: Text("Bandeira: "),
//             trailing: Text("${cardModel!.flag}"),
//           ),
//           ListTile(
//             leading: Text("Limite disponibilizado: "),
//             trailing: Text("${cardModel!.extract}"),
//           ),
//         ],
//       ),
//     );
//   }
// }
