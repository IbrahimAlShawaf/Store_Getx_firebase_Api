import 'package:get/get.dart';
import 'package:storefinal_app/logic/controller/cart_controller.dart';
import 'package:storefinal_app/logic/controller/category_controller.dart';
import 'package:storefinal_app/logic/controller/payment_controller.dart';
import 'package:storefinal_app/logic/controller/product_controller.dart';
import 'package:storefinal_app/logic/controller/settings_controller.dart';

import '../controller/main_controller.dart';

class MainBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
    Get.lazyPut(() => ProductController());
     Get.put(PayMentController(), permanent: true);
  }
}
