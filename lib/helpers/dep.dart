import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:test_app/helpers/app_constants.dart';
import 'package:test_app/models/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app/splash/controllers/localization_controller.dart';

Future<Map<String, Map<String, String>>> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));

  // Retrieving localized data
  Map<String, Map<String, String>> _languages = {};
  for (LanguageModel languageModel in AppConstants.languages) {
    String jsonStringValues = await rootBundle
        .loadString('assets/language/${languageModel.languageCode}.json');
    Map<String, dynamic> _mappedJson = json.decode(jsonStringValues);
    Map<String, String> _json = {};

    _mappedJson.forEach((key, value) {
      _json[key] = value.toString();
    });

    _languages['${languageModel.languageCode}_${languageModel.countryCode}'] =
        _json;
    // print("Languages $_languages");
  }
  return _languages;
}
