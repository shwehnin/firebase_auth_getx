import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/helpers/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_app/helpers/init_dependency.dart';
import 'package:test_app/helpers/init_controllers.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) => di.init());
  await Firebase.initializeApp();
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
      initialBinding: InitDependency(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          colorScheme: defaultColorSchemeTheme,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.indigo)),
      initialRoute: RoutesClass.getTimerRoute(),
      getPages: RoutesClass.routes,
    );
  }
}
