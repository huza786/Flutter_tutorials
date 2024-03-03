import 'dart:core';

import 'package:firebase_auth/firebase_auth.dart';

class Authentication_service {
  final FirebaseAuth firebaseAuth;
  Authentication_service(this.firebaseAuth);
  Stream<User?> get AuthStatechanges => firebaseAuth.authStateChanges();

  Future<String> signin(
      {required String email, required String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return 'Signed in';
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  Future<String> singup(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Signed in';
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }
}
