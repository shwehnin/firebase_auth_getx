import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:test_app/auth/controllers/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  final User user;
  const WelcomePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * .4,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/signup.png",
                ),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: height * .2,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/profile.png"),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome ${user.displayName ?? "Hnin Hnin"}",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "${user.email}",
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: () {
              AuthController.instance.logout();
            },
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                width: width * .5,
                height: height * .08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/loginbtn.png",
                    ),
                  ),
                ),
                child: const Text(
                  "Sign Out",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
