import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_colors.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/domain/entities/navigation_bar_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveNavIcon extends StatelessWidget {
  const ActiveNavIcon({super.key, required this.isHome, required this.item});

  final bool isHome;
  final NavigationBarItemEntity item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 4),
        isHome
            ? Image.asset(Assets.imagesHome)
            : SvgPicture.asset(
                item.iconPath,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
        const SizedBox(height: 4),
        Text(
          item.title,
          style: AppTextStyles.regular12.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
