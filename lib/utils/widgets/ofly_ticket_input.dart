// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OflyTicketInput extends StatelessWidget {
  final TextEditingController ticketNumberController;
  final String hintText;
  const OflyTicketInput({
    Key? key,
    required this.hintText,
    required this.ticketNumberController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      child: TextFormField(
        controller: ticketNumberController,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
