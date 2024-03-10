import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/features/home/home_page.dart';
import 'package:ofly_tech_test/features/travels/travels_page.dart';

class BookedTravelsService {
  final database = FirebaseFirestore.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final List<BookedTravelsModel> bookedTravels = [];
  BookedTravelsModel? bookedTravelsModel;
  String userCollectionPath = 'users';

  Future<void> addTravel(
      String uid, BookedTravelsModel travels, BuildContext context) async {
    try {
      await database
          .collection(userCollectionPath)
          .doc(uid)
          .set(travels.toMap());
      List<BookedTravelsModel> updatedTravels = await getBookedTravels(uid);
      Navigator.of(context).push(
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
      var snapshot = await database
          .collection(userCollectionPath)
          .doc(uid)
          .collection('bookedTravels')
          .get();

      return snapshot.docs
          .map((doc) =>
              BookedTravelsModel.fromMap(doc.data() as Map<String, dynamic>))
          .toList();
    } catch (e) {
      // Handle errors
      print("Error getting booked travels: $e");
      return [];
    }
  }
}
