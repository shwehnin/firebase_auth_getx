import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {
  RxInt count = 0.obs;

  void incrementCount() {
    count.value++;
  }

  void decrementCount() {
    if (count.value <= 0) {
      Get.snackbar(
        "Buy Books",
        "Cann't reduce the number of books",
        icon: const Icon(Icons.alarm),
      );
    } else {
      count.value--;
    }
  }
}
