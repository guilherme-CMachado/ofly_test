import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/features/home/home_page.dart';

class BookedTravelsService {
  final database = FirebaseFirestore.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  String userCollectionPath = 'users';
  Future<void> addTravel(
      String uid, BookedTravelsModel travels, BuildContext context) async {
    try {
      // Verifica se o usuário já existe no banco de dados
      var userDoc =
          await database.collection(userCollectionPath).doc(uid).get();

      if (!userDoc.exists) {
        // Se o usuário não existir, cria um novo documento com um array vazio de viagens
        await database.collection(userCollectionPath).doc(uid).set({
          'bookedTravels': [],
        });
      }

      await database.collection(userCollectionPath).doc(uid).set({
        'bookedTravels': FieldValue.arrayUnion([
          travels.toMap(),
        ]), // Adiciona a viagem ao array
      }, SetOptions(merge: true));

      List<BookedTravelsModel> updatedTravels = await getBookedTravels(uid);

      // Se não houver viagens agendadas, adiciona um objeto vazio para evitar erros
      if (updatedTravels.isEmpty) {
        updatedTravels.add(travels);
      }

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(
            bookedTravels: updatedTravels,
          ),
        ),
      );
    } catch (e) {
      print("Error adding travel: $e");
    }
  }

  Future<List<BookedTravelsModel>> getBookedTravels(String uid) async {
    try {
      var snapshot =
          await database.collection(userCollectionPath).doc(uid).get();

      if (snapshot.exists) {
        var userData = snapshot.data() as Map<String, dynamic>;

        if (userData.containsKey('bookedTravels')) {
          List<dynamic> bookedTravelsData = userData['bookedTravels'];
          List<BookedTravelsModel> bookedTravelsList = bookedTravelsData
              .map((data) => BookedTravelsModel.fromMap(data))
              .toList();

          return bookedTravelsList;
        }
      }
      return [];
    } catch (e) {
      print("Error getting booked travels: $e");
      return [];
    }
  }
}
