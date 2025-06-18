import 'package:auvnet/features/home/domain/entities/home_shortcut_item_entity.dart';

class ShortcutsModel extends HomeShortcutItemEntity {
  ShortcutsModel({required super.image, required super.title});

  factory ShortcutsModel.fromFirebase(Map<String, dynamic> data) {
    return ShortcutsModel(image: data['image'], title: data['title']);
  }
}
