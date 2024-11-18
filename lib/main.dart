import 'package:get/get.dart';
import 'helpers/messages.dart';
import 'helpers/dep.dart' as dep;
import 'package:flutter/material.dart';
import 'package:test_app/helpers/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_app/helpers/app_constants.dart';
import 'package:test_app/helpers/init_dependency.dart';
import 'package:test_app/helpers/init_controllers.dart' as di;
import 'package:test_app/splash/controllers/localization_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) => di.init());
  await Firebase.initializeApp();
  Map<String, Map<String, String>> _languages = await dep.init();
  runApp(MyApp(
    languages: _languages,
  ));
}

final defaultColorSchemeTheme = ColorScheme.fromSwatch(
  primarySwatch: Colors.blue,
  brightness: Brightness.dark,
);

class MyApp extends StatefulWidget {
  final Map<String, Map<String, String>> languages;
  const MyApp({super.key, required this.languages});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return GetMaterialApp(
        initialBinding: InitDependency(),
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
            colorScheme: defaultColorSchemeTheme,
            useMaterial3: true,
            appBarTheme: const AppBarTheme(color: Colors.indigo)),
        locale: localizationController.locale,
        translations: Messages(languages: widget.languages),
        fallbackLocale: Locale(AppConstants.languages[0].languageCode,
            AppConstants.languages[0].countryCode),
        initialRoute: RoutesClass.getUserRoute(),
        getPages: RoutesClass.routes,
      );
    });
  }
}
