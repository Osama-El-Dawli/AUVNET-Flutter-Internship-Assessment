import 'package:auvnet/features/home/domain/entities/home_service_item_entity.dart';

class ServicesModel extends HomeServiceItemEntity {
  ServicesModel({
    required super.image,
    required super.title,
    required super.subTitle,
  });

  factory ServicesModel.fromFirebase(Map<String, dynamic> data) =>
      ServicesModel(
        image: data['image'],
        title: data['title'],
        subTitle: data['subTitle'],
      );
}
