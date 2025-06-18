import 'package:auvnet/core/services/database_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices implements DatabaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? docId,
  }) async {
    final collection = firestore.collection(path);
    if (docId != null) {
      await collection.doc(docId).set(data);
    } else {
      await collection.add(data);
    }
  }

  @override
  Future<T?> getData<T>({
    required String path,
    required T Function(dynamic rawData) fromResponse,
  }) async {
    if (path.split('/').length.isEven) {
      // Path is for a document
      final docSnapshot = await firestore.doc(path).get();
      if (docSnapshot.exists) {
        return fromResponse(docSnapshot);
      } else {
        return null;
      }
    } else {
      // Path is for a collection
      final snapshot = await firestore.collection(path).get();
      return fromResponse(snapshot);
    }
  }
}
