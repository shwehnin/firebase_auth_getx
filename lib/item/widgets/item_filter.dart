import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/item/widgets/item_card.dart';
import 'package:test_app/item/controllers/item_controller.dart';

class ItemFilter extends StatelessWidget {
  const ItemFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ItemController());
    return Flexible(
      child: Obx(
        () => ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (_, i) {
            return CheckboxListTile(
              value: controller.selectedItems.contains(controller.items[i]),
              onChanged: (selectedValue) {
                controller.itemToggle(controller.items[i]);
              },
              title: ItemCard(item: controller.items[i]),
            );
          },
        ),
      ),
    );
  }
}
