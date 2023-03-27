import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storefinal_app/logic/controller/auth_controller.dart';
import 'package:storefinal_app/view/screens/auth/signup_screen.dart';
import 'package:storefinal_app/view/screens/main_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
       
       final controller =  Get.find<AuthController>();
        // AuthFireBase().chechState();
        Get.off(() => controller.isLogin
            ? MainScreen()
            : SignUpScreen()); 
      },
    );
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splash.png'),
      ),
    );
  }
}
