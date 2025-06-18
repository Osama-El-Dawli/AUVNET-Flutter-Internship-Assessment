import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';

abstract class ShortcutsRepo {
  Future<List<HomeShortcutItemEntity>> getShortcuts();
}