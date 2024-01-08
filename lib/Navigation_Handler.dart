import 'package:flutter/material.dart';
import 'package:flutter_flovars/AppConfig.dart';
import 'package:flutter_flovars/dev/Beneficiary_Dev/views/beneficiary_dev_view.dart';
import 'package:flutter_flovars/dev/Login_Dev/views/login_dev_view.dart';
import 'package:flutter_flovars/dev/Own_Transfer_Dev/views/own_transfer_dev_view.dart';
import 'package:flutter_flovars/prod/Beneficiary_Prod/views/beneficiary_prod_view.dart';
import 'package:flutter_flovars/prod/Login_Prod/views/login_prod_view.dart';
import 'package:flutter_flovars/prod/Own_Transfer_Prod/views/own_transfer_prod_view.dart';
import 'package:get/get.dart';

import 'prod/Home_Prod/views/home_prod_view.dart';

class NavigationHandler {
  static final NavigationHandler _instance = NavigationHandler._internal();

  /// Private constructor
  NavigationHandler._internal();

  /// Static method to get the singleton instance
  static NavigationHandler get instance => _instance;

  Map<String, Map<String, Widget Function(dynamic)>> navigationMapTest = {
    ScreenTypes.login.name: {
      Flavor.dev.name: (argument) => LoginDevView(),
      Flavor.prod.name: (argument) => LoginProdView(),
    },
    ScreenTypes.beneficiary.name: {
      Flavor.dev.name: (argument) => BeneficiaryDevView(),
      Flavor.prod.name: (argument) => BeneficiaryProdView(),
    },
    ScreenTypes.ownTransfer.name: {
      Flavor.dev.name: (argument) => OwnTransferDevView(),
      Flavor.prod.name: (argument) => OwnTransferProdView(),
    },
  };

//
//   /// map that return screen type of app
//   Map<String, NavigationInterface> navigationMap = {
//     ScreenTypes.login.name: Login(),
//     ScreenTypes.beneficiary.name: Beneficiary(),
//     ScreenTypes.ownTransfer.name: OwnTransfer(),
//     ScreenTypes.directPayment.name: DirectPayment(),
//     ScreenTypes.home.name: Home(),
//   };
//
  /// function that return screen type widget / view
  navigation(String screenType, [dynamic argument]) {
    Get.offAll(navigationMapTest[screenType]![AppConfig.shared.flavor.name]!(
        argument));
  }
// }
//
// class Login implements NavigationInterface {
//   @override
//   navigation() {
//     print("Login class");
//   }
// }
//
// class Beneficiary implements NavigationInterface {
//   @override
//   navigation() {
//     print("Beneficiary class");
//   }
// }
//
// class OwnTransfer implements NavigationInterface {
//   @override
//   navigation() {
//     print("own Transfer class");
//   }
// }
//
// class DirectPayment implements NavigationInterface {
//   @override
//   navigation() {
//     print("Direct Payment class");
//   }
// }
//
// class Home implements NavigationInterface {
//   Map<String, Widget> homeNavMap = {
//     Flavor.dev.name: HomeDevView(),
//     Flavor.prod.name: HomeProdView(),
//   };
//
//   navigateToScreen(BuildContext context) {
//     Get.offAll(homeNavMap[AppConfig.shared.flavor.name]);
//   }
//
//   @override
//   navigation() {
//     Get.offAll(homeNavMap[AppConfig.shared.flavor.name]);
//     print("Home class");
//   }
}
