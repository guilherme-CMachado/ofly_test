import 'package:flutter/material.dart';

class OnflyTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final TextInputType keyboardInputType;
  final String hintText;
  const OnflyTextField(
      {super.key, required this.textEditingController, required this.hintText, required this.keyboardInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardInputType,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
