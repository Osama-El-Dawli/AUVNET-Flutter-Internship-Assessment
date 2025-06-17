import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/presentation/widgets/home_shortcuts_list_view.dart';
import 'package:auvnet/features/home/presentation/widgets/home_shortcuts_page_view.dart';
import 'package:flutter/material.dart';

class HomeShortcutsSection extends StatelessWidget {
  const HomeShortcutsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Shortcuts:', style: AppTextStyles.bold20),
          SizedBox(height: 20),
          HomeShortcutsListView(),
          SizedBox(height: 32,),
          HomeShortcutsPageView(),
        ],
      ),
    );
  }
}
