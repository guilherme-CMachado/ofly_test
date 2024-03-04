import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ofly_tech_test/core/models/user.dart';
import 'package:ofly_tech_test/core/services/ui_services/toast_service.dart';

class UserService {
  String userCollectionPath = 'users';

  final toastService = ToastService();
  final userUID = FirebaseAuth.instance.currentUser!.uid;

  late final CollectionReference _userRef;

  final database = FirebaseFirestore.instance;

  UserService() {
    _userRef = database.collection(userCollectionPath).withConverter<UserModel>(
          fromFirestore: (snapshots, _) =>
              UserModel.fromJson(snapshots.data()!),
          toFirestore: (user, _) => user.toJson(),
        );
  }

  Stream<QuerySnapshot> getUsers() {
    return _userRef.snapshots();
  }

  Future<UserModel?> createUser(String email, String password, String name,
      int age, BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      UserModel userModel =
          UserModel(name: name, age: age, email: email, password: password);

      print("UUID do usuário: ${userCredential.user!.uid}");
      print("Usuário criado com sucesso");
      Navigator.of(context).pop();
      return userModel;
    } catch (e) {
      print("Erro ao criar usuário: $e");
      return null;
    }
  }

  Future<UserModel?> signIn(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      DocumentSnapshot userSnapshot =
          await _userRef.doc(userCredential.user!.uid).get();

      if (userSnapshot.exists) {
        Map<String, dynamic>? userData =
            userSnapshot.data() as Map<String, dynamic>?;

        if (userData != null) {
          return UserModel.fromJson(userData);
        } else {
          print("Dados do usuário nulos no Firestore");
          return null;
        }
      } else {
        print("Dados do usuário não encontrados no Firestore");
        return null;
      }
    } catch (e) {
      print("Erro ao autenticar usuário: $e");
      return null;
    }
  }

  Future<UserModel?> setFirestoreUser(
      {required String email, required String password}) async {
    await FirebaseFirestore.instance
        .collection(userCollectionPath)
        .doc(userUID)
        .set({
      "email": email,
      "password": password,
    });
  }

  bool isUserAuthenticated() {
    return FirebaseAuth.instance.currentUser != null;
  }
}
