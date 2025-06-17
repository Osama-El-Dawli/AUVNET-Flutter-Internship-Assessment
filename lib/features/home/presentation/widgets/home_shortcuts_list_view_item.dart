import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeShortcutsListViewItem extends StatelessWidget {
  const HomeShortcutsListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 65,
          height: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffFFEEE6),
          ),
          child: Center(child: SvgPicture.asset(Assets.imagesPastOrders)),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 65,
          child: Text(
            'Past orders past',
            textAlign: TextAlign.center,
            style: AppTextStyles.medium12,
          ),
        ),
      ],
    );
  }
}
