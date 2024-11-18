import 'package:flutter/material.dart';
import 'package:test_app/helpers/app_constants.dart';
import 'package:test_app/models/language_model.dart';
import 'package:test_app/splash/controllers/localization_controller.dart';

class LanguageWidget extends StatelessWidget {
  final LanguageModel languageModel;
  final LocalizationController localizationController;
  final int index;
  const LanguageWidget(
      {super.key,
      required this.languageModel,
      required this.localizationController,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        localizationController.setLanguage(
          Locale(AppConstants.languages[index].languageCode,
              AppConstants.languages[index].countryCode),
        );
        localizationController.setSelectedIndex(index);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200]!,
              blurRadius: 5,
              spreadRadius: 1,
            )
          ],
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(languageModel.languageName)
                ],
              ),
            ),
            localizationController.selectedIndex == index
                ? const Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 40,
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.indigo,
                      size: 30,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
