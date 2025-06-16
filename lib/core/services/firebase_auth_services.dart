import 'dart:developer';

import 'package:auvnet/core/errors/exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'The account already exists for that email.',
        );
      } else if (e.code == 'invalid-email') {
        throw CustomException(message: 'The email address is not valid.');
      } else if (e.code == 'operation-not-allowed') {
        throw CustomException(
          message:
              'Operation not allowed. Please check your Firebase settings.',
        );
      } else if (e.code == 'network-request-failed') {
        throw CustomException(
          message:
              'Network request failed. Please check your internet connection.',
        );
      } else if (e.code == 'too-many-requests') {
        throw CustomException(
          message: 'Too many requests. Please try again later.',
        );
      } else {
        throw CustomException(
          message: 'An unexpected error occurred: ${e.message}',
        );
      }
    } catch (e) {
      log(
        'Unexpected error in FirebaseAuthServices.createUserWithEmailAndPassword: ${e.toString()}',
      );
      throw CustomException(message: 'An unexpected error occurred: $e');
    }
  }
}
