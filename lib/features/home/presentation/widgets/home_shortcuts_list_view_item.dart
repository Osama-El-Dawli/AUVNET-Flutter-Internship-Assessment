import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeShortcutsListViewItem extends StatelessWidget {
  const HomeShortcutsListViewItem({
    super.key,
    required this.shortcutItemEntity,
  });
  final HomeShortcutItemEntity shortcutItemEntity;

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
          child: Center(child: SvgPicture.network(shortcutItemEntity.image)),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 65,
          child: Text(
            shortcutItemEntity.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyles.medium12,
          ),
        ),
      ],
    );
  }
}
