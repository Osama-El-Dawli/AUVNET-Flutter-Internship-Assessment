import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/core/utils/app_text_styles.dart';
import 'package:auvnet/features/home/domain/home_service_item_entity.dart';
import 'package:auvnet/features/home/presentation/widgets/home_service_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeServicesSection extends StatelessWidget {
  const HomeServicesSection({super.key});

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
                  child: HomeServicesItem(
                    serviceItemEntity: HomeServiceItemEntity(
                      image: Assets.imagesServiceItem1,
                      title: 'Food',
                      subTitle: 'Up to 50%',
                    ),
                  ),
                ),
                Expanded(
                  child: HomeServicesItem(
                    serviceItemEntity: HomeServiceItemEntity(
                      image: Assets.imagesServiceItem2,
                      title: 'Health & wellness',
                      subTitle: '20 mins',
                    ),
                  ),
                ),
                Expanded(
                  child: HomeServicesItem(
                    serviceItemEntity: HomeServiceItemEntity(
                      image: Assets.imagesServiceItem3,
                      title: 'Groceries',
                      subTitle: '15 mins',
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(-2, -2),
                  blurRadius: 4,
                  color: Color(0x19000000),
                ),
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Color(0x19000000),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: Transform.translate(
                offset: Offset(0, -4),
                child: SvgPicture.asset(Assets.imagesGetCode),
              ),
              title: Text('Got a code !', style: AppTextStyles.bold14),
              subtitle: Text(
                'Add your code and save on your order',
                style: AppTextStyles.medium10.copyWith(
                  color: Colors.black.withAlpha(128),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
