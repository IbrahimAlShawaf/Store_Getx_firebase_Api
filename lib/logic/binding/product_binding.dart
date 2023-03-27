import 'package:get/get.dart';
import 'package:storefinal_app/logic/controller/category_controller.dart';
import 'package:storefinal_app/logic/controller/settings_controller.dart';

import '../controller/cart_controller.dart';
import '../controller/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());

    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
    Get.put(SettingController());
  }
}
