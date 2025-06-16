import 'package:auvnet/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
      );
  }
}
