import 'package:auvnet/features/home/domain/entities/home_service_item_entity.dart';

abstract class ServicesRepo {
  Future<List<HomeServiceItemEntity>> getServices();
}
