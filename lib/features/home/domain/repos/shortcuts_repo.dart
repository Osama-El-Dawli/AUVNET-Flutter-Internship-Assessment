import 'package:auvnet/core/errors/failures.dart';
import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ShortcutsRepo {
  Future<Either<List<HomeShortcutItemEntity>, ServerFailure>> getShortcuts();
}