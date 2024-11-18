import 'package:get/get.dart';
import 'package:test_app/models/user_info_model.dart';

class UserInfoController extends GetxController {
  final _profile = UserInfoModel().obs;
  UserInfoModel get profile => _profile.value;

  @override
  void onInit() {
    super.onInit();
    var profile = UserInfoModel(
      name: "Hnin Hnin",
      description: "Freelancer",
    );
    _profile(profile);
    print("On Init....${profile.name}");
  }

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 2), () {
      _profile.value.name = "Shwe Hnin";
      print(_profile.value.name);
      _profile.refresh();
    });

    print("On Ready...... ${_profile.value.name}");
  }
}
