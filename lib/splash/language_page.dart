import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:test_app/helpers/routes.dart';
import 'package:test_app/splash/widgets/language_widget.dart';
import 'package:test_app/splash/controllers/localization_controller.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<LocalizationController>(
          builder: (localizationController) {
            return Column(
              children: [
                Expanded(
                    child: Center(
                  child: Scrollbar(
                      child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.asset(
                                "assets/images/profile1.png",
                                width: 120,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Image.asset(
                                "assets/images/profile.png",
                                width: 120,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text('select_language'.tr),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, childAspectRatio: 1),
                              itemCount: 2,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (_, i) {
                                return LanguageWidget(
                                    languageModel:
                                        localizationController.languages[i],
                                    localizationController:
                                        localizationController,
                                    index: i);
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('you_can_change_language'.tr),
                            const SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                              onPressed: () =>
                                  Get.toNamed(RoutesClass.getSplashRoute()),
                              child: Text("Splash"),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}
