import 'package:auvnet/features/home/presentation/widgets/home_shortcuts_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeShortcutsListView extends StatelessWidget {
  const HomeShortcutsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65 + 8 + 34,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Center(child: const HomeShortcutsListViewItem()),
        ),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
