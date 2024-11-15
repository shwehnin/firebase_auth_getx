import 'package:flutter/material.dart';
import 'package:test_app/item/widgets/item_filter.dart';
import 'package:test_app/item/widgets/selected_item.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const ItemFilter(),
            Container(
              height: 2,
              color: Colors.redAccent,
            ),
            const SelectedItem(),
          ],
        ),
      ),
    ));
  }
}
