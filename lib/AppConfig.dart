
import 'package:flutter/material.dart';

enum Flavor { prod, dev }

class AppConfig {
  String appName = "Prod Flavor";
  String baseUrl = "";
  MaterialColor primaryColor = Colors.red;
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "Dev Flavor",
    String baseUrl = "dfdfsssssss",
    MaterialColor primaryColor = Colors.green,
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(appName, baseUrl, primaryColor, flavor);
  }

  AppConfig(this.appName, this.baseUrl, this.primaryColor, this.flavor);
}