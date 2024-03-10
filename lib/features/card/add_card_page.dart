import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/credit_card_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/core/services/card/card_service.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_textfield_button.dart';

class AddCardPage extends StatefulWidget {
  final UserModel? userModel;
  const AddCardPage({super.key, this.userModel});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Adicione um cartão"),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              OnflyTextField(
                textEditingController: _cardNumberController,
                keyboardInputType: TextInputType.number,
                hintText: "Digite o número do cartão",
              ),
              OnflyTextField(
                keyboardInputType: TextInputType.text,
                textEditingController: _flagController,
                hintText: "Digite a bandeira",
              ),
              Text("Defina um limite"),
              Text(
                "${_seekbarValue.toStringAsFixed(2)}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Slider(
                min: 0.0,
                max: 1000.0,
                label: "Defina um limite",
                value: _seekbarValue,
                onChanged: (value) {
                  setState(() {
                    _seekbarValue = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  CreditCardModel cardModel = CreditCardModel(
                      flag: _flagController.text,
                      extract: _seekbarValue,
                      cardNumber: _cardNumberController.text);
                  _cardService.addCreditCard(
                      cardModel, widget.userModel!.uid, context);
                },
                child: Text("Adicionar Cartão"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
