import 'dart:io';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/auth/controllers/user_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Upload"),
      ),
      body: GetBuilder<UserController>(builder: (userController) {
        return Padding(
          padding: const EdgeInsets.all(35),
          child: Column(
            children: [
              Center(
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigoAccent,
                    ),
                    child: const Text("Select an image"),
                  ),
                  onTap: () {
                    userController.pickImage();
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 200,
                color: Colors.grey[300],
                child: userController.xFile != null
                    ? Image.file(
                        File(userController.xFile!.path),
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      )
                    : const Text(
                        "Please select an image",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.indigoAccent,
                    ),
                    child: const Text("Server upload"),
                  ),
                  onTap: () => Get.find<UserController>().uploadProfile(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 180,
                color: Colors.grey[300],
                child: userController.imagePath != null
                    ? Image.network(
                        "192.168.1.47:8000${userController.imagePath}",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      )
                    : const Text(
                        "No image from server",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
              )
            ],
          ),
        );
      }),
    );
  }
}
