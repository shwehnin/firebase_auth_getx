import 'package:get/get.dart';
import '../auth/controllers/auth_controller.dart';
import '../splash/controllers/tab_controller.dart';
import '../splash/controllers/list_controller.dart';
import 'package:test_app/auth/controllers/user_controller.dart';
import 'package:test_app/timer/controller/timer_controller.dart';
import 'package:test_app/auth/user/controllers/user_tab_controller.dart';
import 'package:test_app/auth/user/controllers/user_info_controller.dart';
import 'package:test_app/splash/controllers/localization_controller.dart';

class InitDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabCountController());
    Get.lazyPut(() => ListController());
    Get.lazyPut(() => AuthController());
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => TimerController());
    Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));
    Get.lazyPut(() => UserInfoController());
    Get.lazyPut(() => UserTabController());
  }
}
