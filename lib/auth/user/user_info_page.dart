import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'controllers/user_info_controller.dart';

class UserInfoPage extends GetView<UserInfoController> {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${controller.profile.name}",
                style: const TextStyle(fontSize: 25),
              ),
              Text(
                "She is a ${controller.profile.description}",
                style: const TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
