import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/home/domain/entities/home_popular_item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class PopularRepo {
  Future<Either<List<HomePopularItemEntity>,ServerFailure>> getPopular();
}