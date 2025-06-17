import 'package:auvnet/core/utils/app_colors.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/domain/service_item_entity.dart';
import 'package:flutter/material.dart';

class ServicesItem extends StatelessWidget {
  const ServicesItem({super.key, required this.serviceItemEntity});
  final ServiceItemEntity serviceItemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffF5F5F5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: Image.asset(serviceItemEntity.image),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0),
            child: Text(
              serviceItemEntity.subTitle,
              style: AppTextStyles.medium12.copyWith(color: Colors.white),
            ),
          ),
        ),
        Text(
          serviceItemEntity.title,
          textAlign: TextAlign.center,
          style: AppTextStyles.medium14,
        ),
      ],
    );
  }
}
