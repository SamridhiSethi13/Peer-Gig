import 'package:flutter/foundation.dart';

abstract class IAuthRepository {
  Future<void> signUpWithEmailAndPassword(
      {@required String email, @required String password});

  Future<void> signInWithEmailAndPassword(
      {@required String email, @required String password});
}
