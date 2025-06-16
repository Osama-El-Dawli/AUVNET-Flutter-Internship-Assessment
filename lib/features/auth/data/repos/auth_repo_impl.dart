import 'dart:developer';

import 'package:auvnet/core/errors/exceptions.dart';
import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/core/services/firebase_auth_services.dart';
import 'package:auvnet/features/auth/data/model/user_model.dart';
import 'package:auvnet/features/auth/domain/entities/user_entity.dart';
import 'package:auvnet/features/auth/domain/repos/auth_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImpl implements AuthRepo {
  final FirebaseAuthServices _firebaseAuthServices;

  AuthRepoImpl({required FirebaseAuthServices firebaseAuthServices})
    : _firebaseAuthServices = firebaseAuthServices;
  @override
  Future<Either<UserEntity, ServerFailure>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = await _firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return left(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return right(ServerFailure(e.toString()));
    } catch (e) {
      log(
        'Unexpected error in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return right(ServerFailure(e.toString()));
    }
  }
}
