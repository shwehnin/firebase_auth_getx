import 'package:get/get.dart';

class ListController extends GetxController {
  RxList _list = [].obs;

  RxList get list => _list;

  void setValues(int x) {
    _list.add(x);
    print("list value is $_list");
  }
}
