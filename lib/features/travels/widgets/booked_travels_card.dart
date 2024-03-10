import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';

class BookedTravelsCard extends StatelessWidget {
  final BookedTravelsModel bookedTravelsModel;
  const BookedTravelsCard({super.key, required this.bookedTravelsModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            "${bookedTravelsModel.airCompany}",
          ),
        ],
      ),
    );
  }
}
