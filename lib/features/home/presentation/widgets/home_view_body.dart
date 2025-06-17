import 'package:auvnet/features/home/presentation/widgets/home_header.dart';
import 'package:auvnet/features/home/presentation/widgets/home_services.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeHeader(),
        const SizedBox(height: 8),
        const HomeServices(),
        const SizedBox(height: 20),
      ],
    );
  }
}
