import 'package:auvnet/core/services/firebase_auth_services.dart';
import 'package:auvnet/core/services/firestore_services.dart';
import 'package:auvnet/features/auth/data/repos/auth_repo_impl.dart';
import 'package:auvnet/features/home/data/repos/popular_repo_impl.dart';
import 'package:auvnet/features/home/data/repos/services_repo_impl.dart';
import 'package:auvnet/features/home/data/repos/shortcuts_repo_impl.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton(FirebaseAuthServices());
  getIt.registerSingleton(FirestoreServices());
  getIt.registerSingleton(
    AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      firestoreServices: getIt<FirestoreServices>(),
    ),
  );

  getIt.registerSingleton(
    ServicesRepoImpl(firestoreServices: getIt<FirestoreServices>()),
  );
  getIt.registerSingleton(
    ShortcutsRepoImpl(firestoreServices: getIt<FirestoreServices>()),
  );
  getIt.registerSingleton(
    PopularRepoImpl(firestoreServices: getIt<FirestoreServices>()),
  );
}
