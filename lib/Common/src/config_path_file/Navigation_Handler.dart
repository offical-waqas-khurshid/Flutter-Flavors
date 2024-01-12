import 'package:flutter/material.dart';
import 'package:flutter_flovars/Dev/src/Login/views/login_dev_view.dart';
import 'package:flutter_flovars/Dev/src/splash/views/splash_dev_view.dart';
import 'package:flutter_flovars/Prod/src/Login/views/login_prod_view.dart';
import 'package:flutter_flovars/Prod/src/splash/views/splash_prod_view.dart';
import 'package:get/get.dart';
import 'AppConfig.dart';


class NavigationHandler {
  static final NavigationHandler _instance = NavigationHandler._internal();

  /// Private constructor
  NavigationHandler._internal();

  /// Static method to get the singleton instance
  static NavigationHandler get instance => _instance;

  Map<String, Map<String, Widget Function(dynamic)>> navigationMap = {
    ScreenTypes.login.name: {
      Flavor.dev.name: (argument) =>const LoginDevView(),
      Flavor.prod.name: (argument) =>const LoginProdView(),
    },
    ScreenTypes.splash.name: {
      Flavor.dev.name: (argument) =>const SplashDevView(),
      Flavor.prod.name: (argument) =>const SplashProdView(),
    },
  };

  /// function that return screen type widget / views
  navigation(String screenType, [dynamic argument]) {
    Get.offAll(navigationMap[screenType]![AppConfig.shared.flavor.name]!(
        argument));
  }

}
