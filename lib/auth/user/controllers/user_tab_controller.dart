import 'package:get/get.dart';
import 'package:test_app/models/product_model.dart';

class UserTabController extends GetConnect {
  var tabStatus = true.obs;
  RxList<Products> _products = <Products>[].obs;
  RxList<Products> get products => _products;

  void toggleTabs(bool isShowTab) {
    tabStatus.value = isShowTab;
    if (isShowTab) {
      // network request
      loadPopularProducts();
    } else {
      // another kind of network request
      loadRecommendedProducts();
    }
  }

  loadPopularProducts() async {
    Response response = await get("192.168.1.47:8000/api/v1/products/popular");
    if (response.statusCode == 200) {
      final responseData = response.body;
      List<dynamic> productList = responseData["products"];
      _products.value =
          productList.map((item) => Products.fromJson(item)).toList();
    }
  }

  loadRecommendedProducts() async {
    Response response =
        await get("192.168.1.47:8000/api/v1/products/recommended");
    if (response.statusCode == 200) {
      final responseData = response.body;
      List<dynamic> recommendedList = responseData["products"];
      _products.value =
          recommendedList.map((item) => Products.fromJson(item)).toList();
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadPopularProducts();
  }
}
