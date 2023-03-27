import 'package:get/get.dart';

import '../../view/screens/category_screen.dart';
import '../../view/screens/favorite_screen.dart';
import '../../view/screens/home_screen.dart';
import '../../view/screens/setting_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoriteScreen(),
    SettingScreen(),
  ].obs;

  var title = [
    "Store App",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}



