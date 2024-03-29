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
  final UserModel? userModel;
  final String userUID;
  final List<BookedTravelsModel>? bookedTravels;
  final Function()? refreshBookedTravels;

  TravelsPage({
    Key? key,
    required this.userUID,
    this.userModel,
    this.bookedTravels,
    this.refreshBookedTravels,
  }) : super(key: key);

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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(18),
          child: Column(
            children: [
              OnflyTextField(
                keyboardInputType: TextInputType.text,
                textEditingController: _departureController,
                hintText: "Digite o local de embarque",
              ),
              const Gap(20),
              OnflyTextField(
                keyboardInputType: TextInputType.text,
                textEditingController: _arrivalController,
                hintText: 'Digite o local de destino',
              ),
              const Gap(20),
              OnflyTextField(
                keyboardInputType: TextInputType.text,
                textEditingController: _airportController,
                hintText: 'Digite o aeroporto de destino',
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OflyCompanyInput(
                    textEditingController: _companyController,
                    hintText: "Companhia Área",
                  ),
                  OflyTicketInput(
                    hintText: "Num Ticket",
                    ticketNumberController: _ticketController,
                  ),
                ],
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OflyDateTimePicker(),
                  OflySelectedTimeWidget(),
                ],
              ),
              const Gap(20),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(double.maxFinite, 50),
                  backgroundColor: AppColors.textButtonLightThemeColor,
                ),
                onPressed: () async {
                  final travels = BookedTravelsModel(
                    departure: _departureController.text,
                    arrival: _arrivalController.text,
                    planeTicketNumber: _ticketController.text,
                    airPort: _airportController.text,
                    airCompany: _companyController.text,
                    hour: _getCurrentTime(),
                    fightDate: _getCurrentDate(),
                  );

                  await _travelService.addTravel(
                    userUID,
                    travels,
                    context,
                    refreshBookedTravels,
                    userModel,
                  );
                },
                child: const Text(
                  "Agendar viagem",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getCurrentTime() {
    final now = DateTime.now().toLocal();
    return DateFormat.Hm().format(now);
  }

  String _getCurrentDate() {
    final now = DateTime.now().toLocal();
    return DateFormat('dd/MM/yyyy').format(now);
  }
}
