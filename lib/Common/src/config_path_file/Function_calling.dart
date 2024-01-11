import 'package:flutter/material.dart';
import 'package:flutter_flovars/Common/src/config_path_file/AppConfig.dart';
import 'package:flutter_flovars/Common/src/config_path_file/Flavor_fun.dart';
import 'package:flutter_flovars/Dev/src/Login/views/login_dev_view.dart';
import 'package:flutter_flovars/Prod/src/Login/views/login_prod_view.dart';
class FunctionCalling {
  static final FunctionCalling _instance = FunctionCalling._internal();

  /// Private constructor
  FunctionCalling._internal();

  /// Static method to get the singleton instance
  static FunctionCalling get instance => _instance;

  /// Map to store flavor-specific functions
  Map<String, FlavorFun> funCallingMap = {
    // Flavor.dev.name: TestClassDev(),
    // Flavor.prod.name: TestClassProd(),
  };

  /// Navigation Screens based on flavors
  Map<String, Widget> navigationMap = {
    Flavor.dev.name: const LoginDevView(),
    Flavor.prod.name: const LoginProdView(),
  };

  /// function that return flavor name
  String fun() {
    return funCallingMap[AppConfig.shared.flavor.name]!.fun();
  }

  /// function that return controllers of flavor
  navigateToScreen(BuildContext context) {
    if (AppConfig.shared.flavor == Flavor.dev) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginDevView()),
      );
    } else if (AppConfig.shared.flavor == Flavor.prod) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginProdView()),
      );
    } else {
      return Container();
    }
  }
}
