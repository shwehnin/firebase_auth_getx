import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controller/timer_controller.dart';

class TimerPage extends GetView<TimerController> {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 200,
          decoration: ShapeDecoration(
            color: Theme.of(context).primaryColor,
            shape: const StadiumBorder(
              side: BorderSide(width: 2, color: Colors.red),
            ),
          ),
          child: Obx(() => Center(
                child: Text(
                  controller.time.value,
                  style: const TextStyle(fontSize: 30, color: Colors.white),
                ),
              )),
        ),
      ),
    );
  }
}
