import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/booked_travels_model.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/features/home/home_page.dart';

class BookedTravelsService {
  final database = FirebaseFirestore.instance;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  String userCollectionPath = 'users';

  Future<void> addTravel(
      String uid,
      BookedTravelsModel travels,
      BuildContext context,
      VoidCallback? refreshCallBack,
      UserModel? userModel) async {
    try {
      var userDoc =
          await database.collection(userCollectionPath).doc(uid).get();
      if (!userDoc.exists) {
        await database.collection(userCollectionPath).doc(uid).set({
          'bookedTravels': [],
        });
      }
      await database.collection(userCollectionPath).doc(uid).set({
        'bookedTravels': FieldValue.arrayUnion([
          travels.toMap(),
        ]),
      }, SetOptions(merge: true));

      if (refreshCallBack != null) {
        refreshCallBack();
      }

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(
            userModel: userModel,
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

  Stream<List<BookedTravelsModel>> getBookedTravelsStream(String uid) {
    return database
        .collection(userCollectionPath)
        .doc(uid)
        .snapshots()
        .map((snapshot) {
      if (snapshot.exists) {
        var userData = snapshot.data() as Map<String, dynamic>;

        if (userData.containsKey('bookedTravels')) {
          List<dynamic>? bookedTravelsData = userData['bookedTravels'];
          if (bookedTravelsData != null) {
            List<BookedTravelsModel> bookedTravelsList = bookedTravelsData
                .map((data) => BookedTravelsModel.fromMap(data))
                .toList();

            return bookedTravelsList;
          }
        }
      }
      return <BookedTravelsModel>[];
    });
  }
}
