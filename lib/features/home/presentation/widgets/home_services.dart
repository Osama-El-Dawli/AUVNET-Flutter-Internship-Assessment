import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/domain/service_item_entity.dart';
import 'package:auvnet/features/home/presentation/widgets/service_item.dart';
import 'package:flutter/material.dart';

class HomeServices extends StatelessWidget {
  const HomeServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Services:', style: AppTextStyles.bold20),
          const SizedBox(height: 20),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: ServicesItem(
                    serviceItemEntity: ServiceItemEntity(
                      image: Assets.imagesServiceItem1,
                      title: 'Food',
                      subTitle: 'Up to 50%',
                    ),
                  ),
                ),
                Expanded(
                  child: ServicesItem(
                    serviceItemEntity: ServiceItemEntity(
                      image: Assets.imagesServiceItem2,
                      title: 'Health\n& wellness',
                      subTitle: '20 mins',
                    ),
                  ),
                ),
                Expanded(
                  child: ServicesItem(
                    serviceItemEntity: ServiceItemEntity(
                      image: Assets.imagesServiceItem3,
                      title: 'Groceries',
                      subTitle: '15 mins',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
