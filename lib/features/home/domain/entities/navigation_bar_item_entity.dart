import 'package:auvnet/core/utils/app_assets.dart';

class NavigationBarItemEntity {
  final String title;
  final String iconPath;

  NavigationBarItemEntity({required this.title, required this.iconPath});
}

List<NavigationBarItemEntity> get navigationBarItems => [
  NavigationBarItemEntity(title: 'Home', iconPath: Assets.imagesLogo),
  NavigationBarItemEntity(
    title: 'categories',
    iconPath: Assets.imagesCategories,
  ),
  NavigationBarItemEntity(title: 'deliver', iconPath: Assets.imagesDeliver),
  NavigationBarItemEntity(title: 'cart', iconPath: Assets.imagesCart),
  NavigationBarItemEntity(title: 'Profile', iconPath: Assets.imagesProfile),
];
