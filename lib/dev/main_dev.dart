import 'package:flutter/material.dart';

import '../AppConfig.dart';
import '../main.dart';

void main() async {
  AppConfig.create(
      appName: "Dev Flavor Example",
      baseUrl: "https://dev.dwirandyh.com",
      primaryColor: Colors.blue,
      flavor: Flavor.dev,
      themeData: ThemeDataEnum.dev,
      localization: LocalizationEnum.dev,
      imagePath: "assets/prod/man.png");

  runApp(MyApp());
}