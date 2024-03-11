import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/features/card/add_card_page.dart';
import 'package:ofly_tech_test/features/card/widgets/card_tille.dart';

class CardPage extends StatefulWidget {
  UserModel? userModel;
  CardPage({Key? key, this.userModel}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.userModel?.creditCardModels?.isNotEmpty == true
          ? ListView.builder(
              itemCount: widget.userModel!.creditCardModels!.length,
              itemBuilder: (BuildContext context, int index) {
                return CardTile(
                  cardModel: widget.userModel!.creditCardModels![index],
                );
              },
            )
          : Column(
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () async {
                      UserModel? updatedUserModel =
                          await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AddCardPage(
                            userModel: widget.userModel,
                          ),
                        ),
                      );
                      if (updatedUserModel != null) {
                        setState(() {
                          widget.userModel = updatedUserModel;
                        });
                      }
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
