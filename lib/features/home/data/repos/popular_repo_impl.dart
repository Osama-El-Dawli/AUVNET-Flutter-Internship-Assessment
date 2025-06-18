import 'package:auvnet/core/services/firestore_services.dart';
import 'package:auvnet/core/utils/end_points.dart';
import 'package:auvnet/features/home/data/models/popular_model.dart';
import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/popular_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PopularRepoImpl implements PopularRepo {
  final FirestoreServices _firestoreServices;

  PopularRepoImpl({required FirestoreServices firestoreServices})
    : _firestoreServices = firestoreServices;
  @override
  Future<List<HomePopularItemEntity>> getPopular() async {
    final populars = await _firestoreServices.getData<List<PopularModel>>(
      path: EndPoints.popularCollection,
      fromResponse: (querySnapshots) {
        final snapshots = querySnapshots as QuerySnapshot<Map<String, dynamic>>;
        return snapshots.docs
            .map((doc) => PopularModel.fromFirebase(doc.data()))
            .toList();
      },
    );
    return populars ?? [];
  }
}
