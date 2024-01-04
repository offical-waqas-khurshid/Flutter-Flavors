import 'package:flutter/material.dart';
import 'package:flutter_flovars/AppConfig.dart';
import 'package:flutter_flovars/Flavor_fun.dart';
import 'package:flutter_flovars/dev/test_dev.dart';
import 'package:flutter_flovars/prod/Home_Prod/views/home_prod_view.dart';
import 'package:flutter_flovars/prod/test_prod.dart';
import 'package:flutter_flovars/routes/app_pages.dart';
import 'package:get/get.dart';

import 'dev/Home_Dev/views/home_dev_view.dart';

class FunctionCalling {
  static final FunctionCalling _instance = FunctionCalling._internal();

  /// Private constructor
  FunctionCalling._internal();

  /// Static method to get the singleton instance
  static FunctionCalling get instance => _instance;

  /// Map to store flavor-specific functions
  Map<String, FlavorFun> funCallingMap = {
    Flavor.dev.name: TestClassDev(),
    Flavor.prod.name: TestClassProd(),
  };


  Map<String, Widget> navigationMap = {
    Flavor.dev.name: HomeDevView(),
    Flavor.prod.name: HomeProdView(),
  };


  /// function that return flavor name
  String fun() {
    return funCallingMap[AppConfig.shared.flavor.name]!.fun();
  }

  /// function that return controllers of flavor
  Object? navigateToScreen(BuildContext context) {
    if (AppConfig.shared.flavor == Flavor.dev) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeDevView()),
      );
    } else if (AppConfig.shared.flavor == Flavor.prod) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeProdView()),
      );
    } else {
      // Handle unsupported flavor
      return Container();
    }
  }


}
