import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
import 'package:ofly_tech_test/features/home/home_page.dart';

class UserService {
  UserModel? userModel;
  final CollectionReference _userRef =
      FirebaseFirestore.instance.collection('users');
  final database = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;
  late UserCredential credential;

  String userCollectionPath = 'users';

  Future<UserModel> signUp(String password, BuildContext context, String email,
      String userName) async {
    try {
      credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      UserModel userModel = UserModel(
        email: email,
        uid: credential.user!.uid,
        userName: userName,
      );

      await database
          .collection(userCollectionPath)
          .doc(credential.user!.uid)
          .set(userModel.toMap());

      Fluttertoast.showToast(
        msg: "Usuário criado com sucesso!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
      );
      Navigator.pushReplacementNamed(context, "/login");
      return userModel;
    } catch (e) {
      print("Error during sign up: $e");
      return Future.error(e);
    }
  }

  Future<UserModel> getUserById(String uid) async {
    try {
      DocumentSnapshot snapshot = await _userRef.doc(uid).get();
      if (snapshot.exists) {
        Map<String, dynamic> userData = snapshot.data() as Map<String, dynamic>;
        return UserModel.fromMap(userData);
      } else {
        throw Exception("Usuário não encontrado com o UID: $uid");
      }
    } catch (e) {
      print("Erro ao obter usuário por ID: $e");
      throw e;
    }
  }

  Future<UserCredential> login(
      String email, String password, BuildContext context) async {
    credential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (credential.user != null) {
      userModel = await getUserById(credential.user!.uid);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomePage(
                userModel: userModel,
              )));
    }
    print(credential);
    return credential;
  }

  Future<void> signOut() {
    return auth.signOut();
  }
}
