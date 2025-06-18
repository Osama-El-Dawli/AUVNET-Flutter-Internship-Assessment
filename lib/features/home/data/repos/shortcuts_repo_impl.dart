import 'dart:developer';

import 'package:auvnet/core/errors/exceptions.dart';
import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/core/services/firestore_services.dart';
import 'package:auvnet/core/utils/end_points.dart';
import 'package:auvnet/features/home/data/models/shortcuts_model.dart';
import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/shortcuts_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

class ShortcutsRepoImpl implements ShortcutsRepo {
  final FirestoreServices _firestoreServices;

  ShortcutsRepoImpl({required FirestoreServices firestoreServices})
    : _firestoreServices = firestoreServices;
  @override
  Future<Either<List<HomeShortcutItemEntity>, ServerFailure>>
  getShortcuts() async {
    try {
      final shortcuts = await _firestoreServices.getData<List<ShortcutsModel>>(
        path: EndPoints.shortcutsCollection,
        fromResponse: (querySnapshots) {
          final snapshots =
              querySnapshots as QuerySnapshot<Map<String, dynamic>>;
          return snapshots.docs
              .map((doc) => ShortcutsModel.fromFirebase(doc.data()))
              .toList();
        },
      );
      return left(shortcuts ?? []);
    } on CustomException catch (e) {
      log('Exception in ShortcutsRepoImpl.getShortcuts: ${e.toString()}');
      return right(ServerFailure(e.toString()));
    } catch (e) {
      log('Exception in ShortcutsRepoImpl.getShortcuts: ${e.toString()}');
      return right(ServerFailure(e.toString()));
    }
  }
}
