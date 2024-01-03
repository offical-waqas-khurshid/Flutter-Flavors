import 'package:flutter_flovars/AppConfig.dart';
import 'package:flutter_flovars/Flavor_fun.dart';
import 'package:flutter_flovars/dev/test_dev.dart';
import 'package:flutter_flovars/prod/test_prod.dart';

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

  String fun() {
    return funCallingMap[AppConfig.shared.flavor.name]!.fun();
  }
}
