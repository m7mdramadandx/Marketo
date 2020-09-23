import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final CollectionReference userColection =
      Firestore.instance.collection('User');

  Future addUserData(String uid, String email) async {
    await userColection.document(uid).setData({
      'id': uid,
      'email': email,
    });
  }

  Future<String> createAuthUser(String email, String password) async {
    try {
      var result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      addUserData(result.user.uid, result.user.email);
    } catch (error) {
      print(error.code);
    }
  }

  login(String email, String password) {
    try {
      _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (error) {
      print(error.toString());
    }
  }

// ignore: non_constant_identifier_names
//   Future<UserData> CurrentUser() async {
//     FirebaseUser user = await _auth.currentUser();
//     DocumentSnapshot doc = await userColection.document(user.uid).get();
//     return UserData.fromDocument(doc);
//   }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
