import 'package:get/get.dart';
import '../auth/controllers/auth_controller.dart';
import '../splash/controllers/tab_controller.dart';
import '../splash/controllers/list_controller.dart';

class InitDependency implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabCountController());
    Get.lazyPut(() => ListController());
    Get.lazyPut(() => AuthController());
  }
}
