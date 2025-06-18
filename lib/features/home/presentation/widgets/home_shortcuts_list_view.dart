import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:auvnet/features/home/presentation/widgets/home_shortcuts_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeShortcutsListView extends StatelessWidget {
  HomeShortcutsListView({super.key});

  final List<HomeShortcutItemEntity> shortcuts = [
    HomeShortcutItemEntity(image: Assets.imagesMust, title: 'Past orders'),
    HomeShortcutItemEntity(
      image: Assets.imagesPastOrders,
      title: 'Past orders',
    ),
    HomeShortcutItemEntity(
      image: Assets.imagesPastOrders,
      title: 'Past orders',
    ),
    HomeShortcutItemEntity(
      image: Assets.imagesPastOrders,
      title: 'Past orders',
    ),
    HomeShortcutItemEntity(
      image: Assets.imagesPastOrders,
      title: 'Past orders',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65 + 8 + 34,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Center(
            child: HomeShortcutsListViewItem(
              shortcutItemEntity: shortcuts[index],
            ),
          ),
        ),
        itemCount: shortcuts.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
