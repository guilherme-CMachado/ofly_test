import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';
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
}
