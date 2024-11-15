import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/home/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Books",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          _controller.incrementCount();
                        },
                        icon: const Icon(Icons.add),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Text(
                          _controller.count.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {
                          _controller.decrementCount();
                        },
                        icon: const Icon(Icons.remove),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
