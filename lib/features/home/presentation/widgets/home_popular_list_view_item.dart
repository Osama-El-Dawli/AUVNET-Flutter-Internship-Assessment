import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/domain/home_popular_item_entity.dart';
import 'package:flutter/material.dart';

class HomePopularListViewItem extends StatelessWidget {
  const HomePopularListViewItem({super.key, required this.popularItemEntity});
  final HomePopularItemEntity popularItemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 80,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffD9D9D9)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Center(child: Image.asset(popularItemEntity.image)),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          popularItemEntity.name,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyles.medium12,
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Icon(Icons.schedule, color: Color(0x931E1E1E), size: 10),
            Text(
              ' ${popularItemEntity.time}',
              style: AppTextStyles.medium10.copyWith(color: Color(0x931E1E1E)),
            ),
          ],
        ),
      ],
    );
  }
}
