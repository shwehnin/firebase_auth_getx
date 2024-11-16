import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controllers/tab_controller.dart';
import 'package:test_app/splash/splash_page.dart';
import 'package:test_app/splash/controllers/list_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TabCountController controller = Get.find();
    final ListController listController = Get.find();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => Get.to(() => const SplashPage()),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: Text(
                  "X Value is ${controller.count}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Obx(
              () => Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal),
                    child: Text(
                      "Y Value is ${controller.y.value}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(20),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal),
                    child: Text(
                      "Total X + Y Value is ${controller.z.value}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => controller.incrementY(),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: const Text(
                  "Increase Y",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => controller.totalXY(),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: const Text(
                  "Total X + Y",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => listController.setValues(controller.z.value),
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.teal),
                child: const Text(
                  "Save Total",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
