import 'package:auvnet/core/routes/on_generate_route.dart';
import 'package:auvnet/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ECommerce());
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AUVNet E-Commerce',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
