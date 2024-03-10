import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/core/services/travels/booked_travels_service.dart';
import 'package:ofly_tech_test/utils/colors/appColors.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_company_input.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_dateTimePicker.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_selected_time_widget.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_textfield_button.dart';
import 'package:ofly_tech_test/utils/widgets/ofly_ticket_input.dart';

class TravelsPage extends StatelessWidget {
  UserModel? userModel;
  final String userUID;
  final List<BookedTravelsModel>? bookedTravels;

  TravelsPage({
    super.key,
    required this.userUID,
    this.userModel,
    this.bookedTravels,
  });

  final _departureController = TextEditingController();
  final _arrivalController = TextEditingController();
  final _companyController = TextEditingController();
  final _ticketController = TextEditingController();
  final _airportController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final _travelService = BookedTravelsService();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Marcar viagem"),
      ),
      body: Container(
        margin: const EdgeInsets.all(18),
        child: Form(
            child: Column(
          children: <Widget>[
            OnflyTextField(
                textEditingController: _departureController,
                hintText: "Digite o local de embarque"),
            const Gap(20),
            OnflyTextField(
                textEditingController: _arrivalController,
                hintText: 'Digite o local de destino'),
            const Gap(20),
            OnflyTextField(
                textEditingController: _airportController,
                hintText: 'Digite o aeroporto de destino'),
            const Gap(20),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OflyCompanyInput(
                    textEditingController: _companyController,
                    hintText: "Companhia Área",
                  ),
                  SizedBox(width: 5),
                  OflyTicketInput(
                    hintText: "Num Ticket",
                    ticketNumberController: _ticketController,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OflySelectedTimeWidget(),
                SizedBox(width: 5),
                OflyDateTimePicker(),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: AppColors.textButtonLightThemeColor),
              onPressed: () {
                final travels = BookedTravelsModel(
                  planeTicketNumber: _ticketController.text,
                  airPort: _airportController.text,
                  airCompany: _companyController.text,
                  hour: _getCurrentTime(),
                  fightDate: _getCurrentDate(),
                );

                _travelService.addTravel(
                  userUID,
                  travels,
                  context,
                );
              },
              child: const Text(
                "Agendar viagem",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const Spacer(),
          ],
        )),
      ),
    );
  }

  String _getCurrentTime() {
    final now = DateTime.now();
    return DateFormat.Hm().format(now);
  }

  String _getCurrentDate() {
    final now = DateTime.now();
    return DateFormat('dd/MM/yyyy').format(now);
  }
}
