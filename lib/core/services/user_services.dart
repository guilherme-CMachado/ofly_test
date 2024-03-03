import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ofly_tech_test/core/models/user.dart';

class UserService {
  String userCollectionPath = 'users';

  late final CollectionReference _userRef;

  final database = FirebaseFirestore.instance;

  UserService() {
    _userRef = database.collection(userCollectionPath).withConverter<User>(
          fromFirestore: (snapshots, _) => User.fromJson(snapshots.data()!),
          toFirestore: (user, _) => user.toJson(),
        );
  }

  Stream<QuerySnapshot> getUsers() {
    return _userRef.snapshots();
  }

  void createUser(User user) async {
    await database.collection(userCollectionPath).add(user.toJson());
  }
}
