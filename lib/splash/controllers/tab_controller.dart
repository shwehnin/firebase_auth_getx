import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TabCountController extends GetxController {
  int _count = 0;
  int get count => _count;

  RxInt _y = 0.obs;
  RxInt get y => _y;

  RxInt _z = 0.obs;
  RxInt get z => _z;

  void incrementCount() {
    _count++;
    update();
  }

  void decrementCount() {
    if (_count <= 0) {
      Get.snackbar(
        "Counter",
        "Cann't reduce count",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        icon: const Icon(Icons.alarm),
      );
    } else {
      _count--;
      update();
    }
  }

  void totalXY() {
    _z.value = _count + _y.value;
  }

  void incrementY() {
    _y.value++;
  }

  void decrementY() {
    if (_y.value <= 0) {
      Get.snackbar(
        "Counter",
        "Cann't reduce count",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        icon: const Icon(Icons.alarm),
      );
    } else {
      _y.value--;
    }
  }
}
