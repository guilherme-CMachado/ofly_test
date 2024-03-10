import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/features/card/add_card_page.dart';
import 'package:ofly_tech_test/features/card/widgets/card_tille.dart';

class CardPage extends StatelessWidget {
  final UserModel? userModel;
  final CreditCardModel? cardModel;
  const CardPage({super.key, this.userModel, this.cardModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: userModel?.creditCardModels.isNotEmpty
          ? ListView.builder(
              itemCount: userModel!.creditCardModels!.length,
              itemBuilder: (BuildContext context, int index) {
                return CardTile(
                  cardModel: userModel!.creditCardModels![index],
                );
              },
            )
          : Column(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AddCardPage(
                                userModel: userModel,
                              )));
                    },
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      child: Container(
                        child: Column(
                          children: [
                            Icon(Icons.credit_card),
                            const SizedBox(
                              height: 20,
                            ),
                            Text("Adicione um cartão")
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
