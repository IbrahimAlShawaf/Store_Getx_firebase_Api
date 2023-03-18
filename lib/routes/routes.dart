import 'package:get/get.dart';

import '../view/screens/auth/forget_password_screen.dart';
import '../view/screens/auth/login_screen.dart';
import '../view/screens/auth/signup_screen.dart';
import '../view/screens/welcom_screen.dart';

class AppRoutes {
  // initial route
  static const welcome = Routes.welcomescreen;

  // get page
  static final routes = [
    GetPage(
      name: Routes.welcomescreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginscreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.signupscreen,
      page: () =>  SignUpScreen(),
    ),
    GetPage(
      name: Routes.forgotpasswordscreen,
      page: () => const ForgetPasswordScreen(),
    ),
  ];
}

// Create Class Routes To Add at routes List ::::::::::::
class Routes {
  static const welcomescreen = '/welcomescreen';
  static const loginscreen = '/loginscreen';
  static const signupscreen = '/signupscreen';
  static const forgotpasswordscreen = '/forgotpasswordscreen';
}
