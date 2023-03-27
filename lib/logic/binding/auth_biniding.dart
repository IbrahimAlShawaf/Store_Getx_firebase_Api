import 'package:get/get.dart';
import 'package:storefinal_app/logic/controller/product_controller.dart';
import 'package:storefinal_app/logic/controller/settings_controller.dart';

import '../controller/auth_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(SettingController());
    Get.put(ProductController());
  }
}
