import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/core/services/card/card_service.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_textfield_button.dart';

class AddCardPage extends StatefulWidget {
  final UserModel? userModel;
  const AddCardPage({Key? key, this.userModel}) : super(key: key);

  @override
  _AddCardPageState createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  final _cardNumberController = TextEditingController();
  final _flagController = TextEditingController();
  double _seekbarValue = 0.0;
  final _cardService = CardService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicione um cartão"),
      ),
      body: Form(
        child: Column(
          children: [
            OnflyTextField(
              keyboardInputType: TextInputType.number,
              textEditingController: _cardNumberController,
              hintText: "Digite o número do cartão",
            ),
            OnflyTextField(
              keyboardInputType: TextInputType.text,
              textEditingController: _flagController,
              hintText: "Digite a bandeira",
            ),
            SizedBox(height: 20),
            Text("${_seekbarValue.toStringAsFixed(0)}"),
            Slider(
              value: _seekbarValue,
              min: 0,
              max: 1000,
              onChanged: (value) {
                setState(() {
                  _seekbarValue = value;
                });
              },
            ),
            Text(
              "Limite: ${_seekbarValue.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () async {
                CreditCardModel cardModel = CreditCardModel(
                  flag: _flagController.text,
                  extract: _seekbarValue,
                  cardNumber: _cardNumberController.text,
                );

                List<CreditCardModel> updatedCards =
                    await _cardService.addCreditCard(
                  cardModel,
                  widget.userModel!.uid,
                  widget.userModel?.creditCardModels,
                  context,
                );
                UserModel updatedUserModel = widget.userModel!.copyWith(
                  creditCardModels: updatedCards,
                );
                Navigator.of(context).pop(updatedUserModel);
              },
              child: Text("Adicionar Cartão"),
            ),
          ],
        ),
      ),
    );
  }
}
