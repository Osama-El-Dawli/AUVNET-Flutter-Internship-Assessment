import 'dart:developer';

import 'package:auvnet/core/errors/exceptions.dart';
import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/core/services/firestore_services.dart';
import 'package:auvnet/core/utils/end_points.dart';
import 'package:auvnet/features/home/data/models/services_model.dart';
import 'package:auvnet/features/home/domain/entities/home_service_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/services_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ServicesRepoImpl implements ServicesRepo {
  final FirestoreServices _firestoreServices;

  ServicesRepoImpl({required FirestoreServices firestoreServices})
    : _firestoreServices = firestoreServices;

  @override
  Future<Either<List<HomeServiceItemEntity>, ServerFailure>>
  getServices() async {
    try {
      final services = await _firestoreServices.getData<List<ServicesModel>>(
        path: EndPoints.servicesCollection,
        fromResponse: (querySnapshots) {
          final snapshots =
              querySnapshots as QuerySnapshot<Map<String, dynamic>>;
          return snapshots.docs
              .map((doc) => ServicesModel.fromFirebase(doc.data()))
              .toList();
        },
      );
      return left(services ?? []);
    } on CustomException catch (e) {
      log('Exception in ServicesRepoImpl.getServices: ${e.toString()}');
      return right(ServerFailure(e.toString()));
    } catch (e) {
      log('Exception in ServicesRepoImpl.getServices: ${e.toString()}');
      return right(ServerFailure(e.toString()));
    }
  }
}
