import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Common/src/config_path_file/AppConfig.dart';
import 'Common/src/routes/app_pages.dart';

void main() async {
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
              translations: AppConfig.translationMap[Flavor.dev.name],
              locale: const Locale('en', 'US'),
              theme: AppConfig.appThemeMap[Flavor.dev.name],
              initialRoute: AppPages.INITIAL,
              getPages: AppPages.routes,
            ));
  }
}
