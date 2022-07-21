import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class EHealthFirebaseUser {
  EHealthFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

EHealthFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<EHealthFirebaseUser> eHealthFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<EHealthFirebaseUser>(
        (user) => currentUser = EHealthFirebaseUser(user));
