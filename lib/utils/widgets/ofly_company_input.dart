import 'package:flutter/material.dart';

class OflyCompanyInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  const OflyCompanyInput(
      {super.key, required this.textEditingController, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      child: TextFormField(
        controller: textEditingController,
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
