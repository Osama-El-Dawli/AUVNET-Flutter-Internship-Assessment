import 'package:auvnet/core/services/firestore_services.dart';
import 'package:auvnet/core/utils/end_points.dart';
import 'package:auvnet/features/home/data/models/services_model.dart';
import 'package:auvnet/features/home/domain/entities/home_service_item_entity.dart';
import 'package:auvnet/features/home/domain/repos/services_repo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ServicesRepoImpl implements ServicesRepo {
  final FirestoreServices _firestoreServices;

  ServicesRepoImpl({required FirestoreServices firestoreServices})
    : _firestoreServices = firestoreServices;
  @override
  Future<List<HomeServiceItemEntity>> getServices() async {
    final services = await _firestoreServices.getData<List<ServicesModel>>(
      path: EndPoints.servicesCollection,
      fromResponse: (querySnapshots) {
        final snapshots = querySnapshots as QuerySnapshot<Map<String, dynamic>>;
        return snapshots.docs
            .map((doc) => ServicesModel.fromFirebase(doc.data()))
            .toList();
      },
    );
    return services ?? [];
  }
}
