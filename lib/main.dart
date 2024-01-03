import 'package:flutter/material.dart';
import 'package:flutter_flovars/dev/Local_string_dev.dart';
import 'package:flutter_flovars/dev/theme_utils/app_theme_dev.dart';
import 'package:flutter_flovars/prod/Local_string_prod.dart';
import 'package:flutter_flovars/prod/theme_utils/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'AppConfig.dart';
import 'HomePage.dart';

void main() async {
  // await AppConfig.shared.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 720),
        ensureScreenSize: true,
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        builder: (BuildContext context, Widget? child) =>
            GetMaterialApp(
              translations: AppConfig.shared.localization == LocalizationEnum.dev ? LocaleStringDev() : LocaleStringProd(),
              locale: const Locale('en', 'US'),
              theme: AppConfig.shared.themeData == ThemeDataEnum.dev
                  ? appThemeDev()
                  : appTheme(),
              home: const HomePage(),
            ));
  }
}
