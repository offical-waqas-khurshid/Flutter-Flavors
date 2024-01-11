import 'package:flutter/material.dart';
import 'package:flutter_flovars/Common/src/routes/app_pages.dart';
import 'package:flutter_flovars/Dev/res/app_theme/Local_string_dev.dart';
import 'package:flutter_flovars/Dev/res/app_theme/app_theme.dart';
import 'package:flutter_flovars/Prod/res/app_theme/Local_string_prod.dart';
import 'package:flutter_flovars/Prod/res/app_theme/app_theme.dart';
import 'package:get/get_navigation/get_navigation.dart';

enum Flavor { prod, dev }

enum InitialScreen { prod, dev }

enum ScreenTypes { login, splash }

class AppConfig {
  Flavor flavor;
  ScreenTypes screenTypes;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    Flavor flavor = Flavor.dev,
    ScreenTypes screenTypes = ScreenTypes.splash,
  }) {
    return shared = AppConfig._internal(flavor, screenTypes);
  }

  AppConfig._internal(
    this.flavor,
    this.screenTypes,
  );

  /// Map for app Initial Routing of Flavors
  static  Map<String, String> initialRoutingMap = {
    Flavor.dev.name: Routes.SPLASH_DEV,
    Flavor.prod.name: Routes.SPLASH_PROD,
  };

  /// Map for app Translation of Flavors
  static Map<String, Translations> translationMap = {
    Flavor.dev.name : LocaleStringDev(),
    Flavor.prod.name : LocaleStringProd(),
  };

  /// Map for app Theme of Flavors
  static Map<String, ThemeData> appThemeMap = {
    Flavor.dev.name : appThemeDev(),
    Flavor.dev.name : appThemeProd(),
  };
}
