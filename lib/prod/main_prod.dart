import 'package:flutter/material.dart';

import '../AppConfig.dart';
import '../main.dart';

void main() async {
  AppConfig.create(
      appName: "Prod Flavor Example",
      baseUrl: "https://dev.dwirandyh.com",
      primaryColor: Colors.red,
      flavor: Flavor.prod,
      themeData: ThemeDataEnum.prod,
      locale: LocaleEnum.prod,
      //screenType: ScreenTypes.login,
      //screenView: ScreensViewEnum.prod,
      localization: LocalizationEnum.prod,
      imagePath: 'assets/prod/man.png');

  runApp(MyApp());
}