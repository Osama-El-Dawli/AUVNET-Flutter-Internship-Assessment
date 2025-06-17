import 'package:auvnet/core/routes/on_generate_route.dart';
import 'package:auvnet/core/services/custom_bloc_observer.dart';
import 'package:auvnet/core/services/get_it_service.dart';
import 'package:auvnet/core/utils/app_colors.dart';
import 'package:auvnet/core/utils/app_constants.dart';
import 'package:auvnet/features/splash/presentation/views/splash_view.dart';
import 'package:auvnet/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupGetIt();
  await Hive.initFlutter();
  await Hive.openBox(AppConstants.hiveBox);
  Bloc.observer = CustomBlocObserver();
  runApp(const Nawel());
}

class Nawel extends StatelessWidget {
  const Nawel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nawel',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
