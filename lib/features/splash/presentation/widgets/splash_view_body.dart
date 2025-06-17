import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_constants.dart' show AppConstants;
import 'package:auvnet/features/auth/presentation/views/login_view.dart';
import 'package:auvnet/features/home/presentation/views/home_view.dart';
import 'package:auvnet/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    _checkCashingForNavigation();
    super.initState();
  }

  void _checkCashingForNavigation() async {
    await Future.delayed(const Duration(seconds: 2));

    final settingBox = Hive.box(AppConstants.settingsBox);
    final authBox = Hive.box(AppConstants.authBox);
    final token = authBox.get(AppConstants.token);
    final isVisited = settingBox.get(
      AppConstants.isOnBoardingVisited,
      defaultValue: false,
    );

    if (!mounted) return;
    if (token != null && token.toString().isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    } else if (isVisited) {
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    } else {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.imagesLogo));
  }
}
