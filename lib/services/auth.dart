import 'package:firebase_auth/firebase_auth.dart';

class User {
  final String? uid;
  User({required this.uid});
}

class Auth {
  final _firebaseAuth = FirebaseAuth.instance;

  User? _userFromFirebase(User? user) {
    if (user == null) {
      return null;
    }
    return User(uid: user.uid);
  }

  Future<User?> currentUser() async {
    await _firebaseAuth.currentUser;
  }

  Future<User?> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return authResult.user;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
