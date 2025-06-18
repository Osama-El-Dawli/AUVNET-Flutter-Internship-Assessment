import 'package:auvnet/core/services/firestore_services.dart';
import 'package:auvnet/core/utils/end_points.dart';
import 'package:auvnet/features/home/data/models/shortcuts_model.dart';
import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/shortcuts_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ShortcutsRepoImpl implements ShortcutsRepo {
  final FirestoreServices _firestoreServices;

  ShortcutsRepoImpl({required FirestoreServices firestoreServices})
    : _firestoreServices = firestoreServices;
  @override
  Future<List<HomeShortcutItemEntity>> getShortcuts() async {
    final shortcuts = await _firestoreServices.getData<List<ShortcutsModel>>(
      path: EndPoints.shortcutsCollection,
      fromResponse: (querySnapshots) {
        final snapshots = querySnapshots as QuerySnapshot<Map<String, dynamic>>;
        return snapshots.docs
            .map((doc) => ShortcutsModel.fromFirebase(doc.data()))
            .toList();
      },
    );
    return shortcuts ?? [];
  }
}
