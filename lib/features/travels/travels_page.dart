import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ofly_tech_test/core/services/travels/travels_service.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_textfield_button.dart';

class TravelsPage extends StatelessWidget {
  TravelsPage({super.key});

  final List<String> dropdownOptions = ['Rio', 'São Paulo', 'Belo Horizonte'];
  final List<String> companyOptions = ["Azul", "Gol", "Latam"];
  final _departureController = TextEditingController();

  final _travelService = TravelService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Marcar viagem"),
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        child: Form(
            child: Column(
          children: <Widget>[
            OnflyTextField(
                textEditingController: _departureController,
                hintText: "Digite o aeroporto de embarque"),
            Gap(20),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Selecione a cidade de destino",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 120,
                    maxHeight: 40,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade600),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.greenAccent)),
                ),
              ],
            ),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text("Pagar viagem")),
            const Spacer(),
          ],
        )),
      ),
    );
  }
}
