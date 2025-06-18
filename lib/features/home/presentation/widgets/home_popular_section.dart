import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/presentation/widgets/home_popular_list_view.dart';
import 'package:flutter/material.dart';

class HomePopularSection extends StatelessWidget {
  const HomePopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Popular restaurants nearby', style: AppTextStyles.bold16),
          const SizedBox(height: 16),
          HomePopularListView(),
        ],
      ),
    );
  }
}
