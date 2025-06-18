import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';

class PopularModel extends HomePopularItemEntity {
  PopularModel({
    required super.image,
    required super.name,
    required super.time,
  });

  factory PopularModel.fromFirebase(Map<String, dynamic> data) => PopularModel(
    image: data['image'],
    name: data['name'],
    time: data['time'],
  );
}
