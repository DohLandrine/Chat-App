import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

enum AuthStatus {
  authenticated,
  authenticating,
  notAuthenticated,
  userNotFound,
  error
}

class AuthProvider extends ChangeNotifier {
  static AuthProvider instance = AuthProvider();

  late AuthStatus status;
  User? user;
  late FirebaseAuth _auth;
  AuthProvider(){
    _auth = FirebaseAuth.instance;
  }

  void signInUserWithEmailAndPassword(String email, String password) async{
    status = AuthStatus.authenticating;
    notifyListeners();
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      user = result.user;
      status = AuthStatus.authenticated;
    } catch (e) {
      //do something
    }
  }
}