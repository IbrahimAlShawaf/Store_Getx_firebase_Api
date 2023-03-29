import 'package:get/get.dart';
import 'package:storefinal_app/logic/binding/auth_biniding.dart';
import 'package:storefinal_app/logic/binding/product_binding.dart';
import 'package:storefinal_app/view/screens/main_screen.dart';
import 'package:storefinal_app/view/screens/payment_screen.dart';
import 'package:storefinal_app/view/screens/splash_screen.dart';

import '../logic/binding/main_binding.dart';
import '../view/screens/auth/forget_password_screen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/cart_screen.dart';
import '../view/screens/welcom_screen.dart';

class AppRoutes {
  // initial route
  static const welcome = Routes.welcomescreen;
  static const mainscreen = Routes.mainscreen;

  // get page
  static final routes = [
    GetPage(
      name: Routes.welcomescreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginscreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signupscreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotpasswordscreen,
      page: () => ForgetPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainscreen,
      page: () => MainScreen(),
      bindings: [
        AuthBinding(),
        MainBininding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.cartscreen,
      page: () => CartScreen(),
       bindings: [
        AuthBinding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.splashscreen,
      page: () => SplashScreen(),
      bindings: [
        AuthBinding(),
        MainBininding(),
      ],
    ),
    GetPage(
      name: Routes.paymentscreen,
      page: () => PayMentScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
        MainBininding(),
      ],
    ),
  ];
}

// Create Class Routes To Add at routes List ::::::::::::
class Routes {
  static const welcomescreen = '/welcomescreen';
  static const loginscreen = '/loginscreen';
  static const signupscreen = '/signupscreen';
  static const forgotpasswordscreen = '/forgotpasswordscreen';
  static const mainscreen = '/mainscreen';
  static const cartscreen = '/cartscreen';
  static const splashscreen = '/splashscreen';
  static const paymentscreen = '/paymentscreen';
}
