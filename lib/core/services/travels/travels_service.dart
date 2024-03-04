import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/travel.dart';
import 'package:ofly_tech_test/core/services/ui_services/toast_service.dart';

class TravelService {
  String travelCollectionPath = 'travels';

  final toastService = ToastService();

  late final CollectionReference _travelRef;

  final database = FirebaseFirestore.instance;

  TravelService() {
    _travelRef = database
        .collection(travelCollectionPath)
        .withConverter<Travel>(
          fromFirestore: (snapshots, _) => Travel.fromJson(snapshots.data()!),
          toFirestore: (travel, _) => travel.toJson(),
        );
  }

  Stream<QuerySnapshot> getUsers() {
    return _travelRef.snapshots();
  }

  void addTravel(Travel travel, BuildContext context) async {
    try {
      await database.collection(travelCollectionPath).add(travel.toJson());
      print("Viagem criada com sucesso");
      toastService.showSucessToastMessage(context);
      Navigator.of(context).pop();
    } catch (e) {
      print("Falha ao criar usuário no banco de dados");
    }
  }
}
