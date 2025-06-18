import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/home/domain/entities/home_service_item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ServicesRepo {
  Future<Either<List<HomeServiceItemEntity>, ServerFailure>> getServices();
}
