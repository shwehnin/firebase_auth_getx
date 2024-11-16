import 'package:get/get.dart';
import '../splash/controllers/tab_controller.dart';
import 'package:test_app/auth/controllers/auth_controller.dart';
import 'package:test_app/splash/controllers/list_controller.dart';

Future<void> init() async {
  Get.lazyPut(() => TabCountController());
  Get.lazyPut(() => ListController());
  Get.lazyPut(() => AuthController());
}
