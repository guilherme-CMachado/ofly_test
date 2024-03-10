// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ofly_tech_test/core/models/booked_travels_model.dart';

class TravelDetailsPage extends StatefulWidget {
  final BookedTravelsModel bookedTravelsModel;
  const TravelDetailsPage({
    Key? key,
    required this.bookedTravelsModel,
  }) : super(key: key);

  @override
  State<TravelDetailsPage> createState() => _TravelDetailsPageState();
}

class _TravelDetailsPageState extends State<TravelDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes da viagem"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: Text("${widget.bookedTravelsModel.departure}"),
            leading: const Text("Embarque: "),
          ),
          Divider(),
          ListTile(
            trailing: Text("${widget.bookedTravelsModel.arrival}"),
            leading: const Text("Destino: "),
          ),
          Divider(),
          ListTile(
            trailing: Text("${widget.bookedTravelsModel.airPort}"),
            leading: const Text("Aeroporto: "),
          ),
          Divider(),
          ListTile(
            trailing: Text("${widget.bookedTravelsModel.fightDate}"),
            leading: const Text("Data do voo: "),
          ),
          Divider(),
          ListTile(
            trailing: Text("${widget.bookedTravelsModel.hour}"),
            leading: const Text("Hora marcada: "),
          ),
          Divider(),
          ListTile(
            trailing: Text("${widget.bookedTravelsModel.planeTicketNumber}"),
            leading: const Text("Número da passagem: "),
          ),
          Divider(),
        ],
      ),
    );
  }
}
