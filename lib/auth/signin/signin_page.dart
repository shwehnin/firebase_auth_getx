import 'package:get/get.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:test_app/helpers/routes.dart';
import 'package:test_app/auth/controllers/auth_controller.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

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
                  image: AssetImage("assets/images/loginimg.png"),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  const Text(
                    "Sign in your account",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
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
                      controller: emailController,
                      style: const TextStyle(color: Colors.grey),
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
                        controller: passwordController,
                        style: const TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: "Password",
                          prefixIcon: const Icon(
                            Icons.password,
                            color: Colors.deepOrange,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () =>
                                AuthController.instance.togglePassword(),
                            child: Icon(
                              AuthController.instance.showPsw.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.deepOrange,
                            ),
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
                      AuthController.instance.login(emailController.text.trim(),
                          passwordController.text.trim());
                    },
                    child: Center(
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
                          "Sign In",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                        text: "Don't have an account? ",
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Get.toNamed(RoutesClass.getSignUpRoute()),
                            text: "Create",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
