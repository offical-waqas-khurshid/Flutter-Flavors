import 'package:flutter/material.dart';
import 'package:flutter_flovars/Function_calling.dart';
import 'package:flutter_flovars/Navigation_Handler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'AppConfig.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List localeDev = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
    {'name': 'Arabic', 'locale': const Locale('ar', 'SA')},
    {'name': 'Urdu', 'locale': const Locale('ur', 'PK')},
  ];
  final List localeProd = [
    {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
  ];
  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }
  buildLanguageDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: Text('change_language'.tr),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("${AppConfig.shared.locale == LocaleEnum.dev ? localeDev[index]['locale'] : localeProd[index]['locale']}"),
                      ),
                      onTap: () {
                        //print(locale[index]['name']);
                        updateLanguage(AppConfig.shared.locale == LocaleEnum.dev ? localeDev[index]['locale'] : localeProd[index]['locale']);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.blue,
                    );
                  },
                  itemCount: AppConfig.shared.locale == LocaleEnum.dev ? localeDev.length : localeProd.length),
            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello".tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("App Name: ${AppConfig.shared.appName}"),
            Text("Base URL: ${AppConfig.shared.baseUrl}"),
            Text("Flavor Function: ${FunctionCalling.instance.fun()}"),
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${AppConfig.shared.imagePath}"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 55.0,
              width: 220.0,
              child: ElevatedButton(
                  onPressed: () {
                    buildLanguageDialog(context);
                  },
                  child: Text('change_language'.tr)),
            ),

            ElevatedButton(onPressed: (){
               NavigationHandler.instance.navigation(ScreenTypes.login.name);
            }, child: const Text("Navigate"))
          ],
        ),
      ),
    );
  }

}
