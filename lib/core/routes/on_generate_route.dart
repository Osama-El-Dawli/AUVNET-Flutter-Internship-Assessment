import 'package:auvnet/features/auth/domain/entities/user_entity.dart';
import 'package:auvnet/features/auth/presentation/views/login_view.dart';
import 'package:auvnet/features/auth/presentation/views/sign_up_view.dart';
import 'package:auvnet/features/home/presentation/views/home_view.dart';
import 'package:auvnet/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:auvnet/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => const LoginView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpView());

    case HomeView.routeName:
    final user = settings.arguments as UserEntity;
      return MaterialPageRoute(builder: (_) => HomeView(userEntity: user,));

    default:
      return MaterialPageRoute(
        builder: (_) =>
            const Scaffold(body: Center(child: Text('Page not found'))),
      );
  }
}
