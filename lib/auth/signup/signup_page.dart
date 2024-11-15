import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/auth/signin/signin_page.dart';
import 'package:test_app/auth/controllers/auth_controller.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    List images = [
      "g.png",
      "t.png",
      "f.png",
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * .4,
              width: w,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/signup.png"),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: h * .25,
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: w,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(.2),
                        )
                      ],
                    ),
                    child: TextField(
                      style: const TextStyle(color: Colors.grey),
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.grey),
                        prefixIcon: const Icon(
                          Icons.email,
                          color: Colors.deepOrange,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 7,
                          offset: const Offset(1, 1),
                          color: Colors.grey.withOpacity(.2),
                        )
                      ],
                    ),
                    child: Obx(
                      () => TextField(
                        obscureText: !AuthController.instance.showPsw.value,
                        style: const TextStyle(color: Colors.grey),
                        controller: passwordController,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              AuthController.instance.togglePassword();
                            },
                            child: Icon(
                              AuthController.instance.showPsw.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.deepOrange,
                            ),
                          ),
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.deepOrange,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      AuthController.instance.register(
                          emailController.text.trim(),
                          passwordController.text.trim());
                    },
                    child: Container(
                      width: w * .5,
                      height: h * .08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "assets/images/loginbtn.png",
                          ),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(
                      () => const SigninPage(),
                    ),
                    child: const Text(
                      "Have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Signup using one of the following methods",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (int a) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey.withOpacity(.3), width: 3),
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/images/${images[a]}",
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
