import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_app/auth/signup/signup_page.dart';
import 'package:test_app/auth/controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

final defaultColorSchemeTheme = ColorScheme.fromSwatch(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          colorScheme: defaultColorSchemeTheme,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.indigo)),
      home: const SignupPage(),
    );
  }
}
