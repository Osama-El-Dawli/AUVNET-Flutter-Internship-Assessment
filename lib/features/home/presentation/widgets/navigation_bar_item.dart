import 'package:auvnet/features/home/domain/navigation_bar_item_entity.dart';
import 'package:auvnet/features/home/presentation/widgets/active_nav_icon.dart';
import 'package:auvnet/features/home/presentation/widgets/inactive_icon_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.isHome,
    required this.item,
  });
  final bool isHome;
  final bool isSelected;
  final NavigationBarItemEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 6),
        Expanded(
          child: isSelected
              ? ActiveNavIcon(isHome: isHome, item: item)
              : InActiveNavIcon(isHome: isHome, item: item),
        ),
      ],
    );
  }
}
