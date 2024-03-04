import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/travel.dart';

class PaymentPage extends StatefulWidget {
  final Travel travelData;
  const PaymentPage({super.key, required this.travelData});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
