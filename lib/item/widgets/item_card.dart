import 'package:flutter/material.dart';
import 'package:test_app/models/item_model.dart';

class ItemCard extends StatelessWidget {
  final ItemModel item;
  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: item.color,
      ),
      child: Center(
        child: Text(
          item.name,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
