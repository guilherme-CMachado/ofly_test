import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Travel History"),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('travels').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            Text("Não há viagens agendadas");
          }
          return Container();
        },
      ),
    );
  }
}
