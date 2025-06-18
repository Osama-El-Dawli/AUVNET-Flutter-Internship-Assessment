import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';

abstract class PopularRepo {
  Future<List<HomePopularItemEntity>> getPopular();
}