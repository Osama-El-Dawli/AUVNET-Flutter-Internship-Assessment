import 'package:auvnet/features/home/presentation/widgets/home_header.dart';
import 'package:auvnet/features/home/presentation/widgets/home_popular_section.dart';
import 'package:auvnet/features/home/presentation/widgets/home_services_section.dart';
import 'package:auvnet/features/home/presentation/widgets/home_shortcuts_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeader(),
              const SizedBox(height: 8),
              const HomeServicesSection(),
              const SizedBox(height: 14),
              const HomeShortcutsSection(),
              const SizedBox(height: 34),
              const HomePopularSection(),
              const SizedBox(height: 66),
            ],
          ),
        ),
      ],
    );
  }
}
