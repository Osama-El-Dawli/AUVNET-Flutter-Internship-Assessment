import 'package:auvnet/core/utils/app_assets.dart';
import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';
import 'package:auvnet/features/home/presentation/widgets/home_popular_list_view_item.dart';
import 'package:flutter/material.dart';

class HomePopularListView extends StatelessWidget {
  HomePopularListView({super.key});

  final List<HomePopularItemEntity> popularItems = [
    HomePopularItemEntity(
      image: Assets.imagesPopular,
      name: 'Allo Beirut',
      time: '32 mins',
    ),
    HomePopularItemEntity(
      image: Assets.imagesPopular,
      name: 'Allo Beirut',
      time: '32 mins',
    ),
    HomePopularItemEntity(
      image: Assets.imagesPopular,
      name: 'Allo Beirut',
      time: '32 mins',
    ),
    HomePopularItemEntity(
      image: Assets.imagesPopular,
      name: 'Allo Beirut',
      time: '32 mins',
    ),
    HomePopularItemEntity(
      image: Assets.imagesPopular,
      name: 'Allo Beirut',
      time: '32 mins',
    ),
    HomePopularItemEntity(
      image: Assets.imagesPopular,
      name: 'Allo Beirut',
      time: '32 mins',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70 + 8 + 17 + 18,
      child: ListView.builder(
        itemCount: popularItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: HomePopularListViewItem(
              popularItemEntity: popularItems[index],
            ),
          );
        },
      ),
    );
  }
}
