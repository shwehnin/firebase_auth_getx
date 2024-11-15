import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/models/item_model.dart';

class ItemController extends GetxController {
  final _items = {
    ItemModel(name: "Item One", color: Colors.orange): false,
    ItemModel(name: "Item Two", color: Colors.teal): false,
    ItemModel(name: "Item Three", color: Colors.deepPurple): false,
  }.obs;

  get items => _items.entries.map((e) => e.key).toList();

  void itemToggle(ItemModel item) {
    _items[item] = !(_items[item] ?? true);
  }

  get selectedItems =>
      _items.entries.where((e) => e.value).map((e) => e.key).toList();
}
