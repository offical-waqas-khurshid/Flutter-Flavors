import 'package:flutter/material.dart';

enum Flavor { prod, dev }
enum ScreenTypes {login, beneficiary, ownTransfer, directPayment, home}
enum ThemeDataEnum { prod, dev }

enum LocaleEnum { prod, dev }

enum LocalizationEnum { prod, dev }

class AppConfig {
  String appName;
  String baseUrl;
  MaterialColor primaryColor;
  Flavor flavor;
  ThemeDataEnum themeData;
  LocalizationEnum localization;
  LocaleEnum locale;
  String imagePath;
  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "Dev Flavor",
    String baseUrl = "dfdfsssssss",
    MaterialColor primaryColor = Colors.green,
    Flavor flavor = Flavor.dev,
    ThemeDataEnum themeData = ThemeDataEnum.dev,
    LocalizationEnum localization = LocalizationEnum.dev,
    LocaleEnum locale = LocaleEnum.dev,
    String imagePath = "assets/prod/man.png",
  }) {
    return shared = AppConfig._internal(appName, baseUrl, primaryColor, flavor,
        themeData, imagePath, localization, locale);
  }

  AppConfig._internal(
      this.appName,
      this.baseUrl,
      this.primaryColor,
      this.flavor,
      this.themeData,
      this.imagePath,
      this.localization,
      this.locale,
     );

  /// Create the Image.asset widget using the stored asset path
  Image get imageWidget => Image.asset(imagePath);
}
