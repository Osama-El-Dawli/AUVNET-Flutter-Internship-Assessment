import 'package:auvnet/core/utils/app_colors.dart';
import 'package:auvnet/features/home/domain/navigation_bar_item_entity.dart';
import 'package:auvnet/features/home/presentation/widgets/navigation_bar_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.page,
    required this.onTap,
  });

  final ValueNotifier<double> page;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    final itemCount = navigationBarItems.length;
    final itemWidth = MediaQuery.of(context).size.width / itemCount;

    return ValueListenableBuilder<double>(
      valueListenable: page,
      builder: (context, currentPage, _) {
        final currentIndex = currentPage.round();
        final leftOffset = itemWidth * currentPage + 10;

        return SizedBox(
          height: 60,
          child: Stack(
            children: [
              Positioned.fill(
                child: Row(
                  children: navigationBarItems
                      .asMap()
                      .entries
                      .map(
                        (entry) => Expanded(
                          child: InkWell(
                            onTap: () => onTap(entry.key),
                            child: NavigationBarItem(
                              item: entry.value,
                              isSelected: entry.key == currentIndex,
                              isHome: entry.key == 0,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),

              Positioned(
                left: leftOffset,
                top: 0,
                child: Container(
                  width: itemWidth - 20,
                  height: 6,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
