import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/item/widgets/item_card.dart';
import 'package:test_app/item/controllers/item_controller.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemController controller = Get.find();
    return Flexible(
      child: Obx(
        () => ListView.builder(
          itemCount: controller.selectedItems.length,
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ItemCard(item: controller.items[i]),
            );
          },
        ),
      ),
    );
  }
}
