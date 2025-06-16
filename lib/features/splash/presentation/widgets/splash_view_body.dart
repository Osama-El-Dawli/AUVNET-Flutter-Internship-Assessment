import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_constants.dart' show AppConstants;
import 'package:auvnet/features/auth/presentation/views/login_view.dart';
import 'package:auvnet/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  final _hiveBox = Hive.box(AppConstants.hiveBox);
  bool get _isOnBoardingVisited =>
      _hiveBox.get(AppConstants.isOnBoardingVisited, defaultValue: false);

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        if (_isOnBoardingVisited) {
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.imagesLogo));
  }
}
