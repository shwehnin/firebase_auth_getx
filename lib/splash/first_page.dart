import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/splash/controllers/tab_controller.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TabCountController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("First"),
      ),
      body: Column(
        children: [
          GetBuilder<TabCountController>(
            builder: (_) => Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.teal),
              child: Text(
                controller.count.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.decrementCount();
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.teal),
              child: const Text(
                "Decrease Count",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
