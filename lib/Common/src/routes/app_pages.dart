
import 'package:flutter_flovars/Common/src/config_path_file/AppConfig.dart';
import 'package:flutter_flovars/Dev/src/Login/bindings/login_dev_binding.dart';
import 'package:flutter_flovars/Dev/src/splash/bindings/splash_dev_binding.dart';
import 'package:flutter_flovars/Dev/src/splash/views/splash_dev_view.dart';
import 'package:flutter_flovars/Prod/src/Login/bindings/login_prod_binding.dart';
import 'package:flutter_flovars/Prod/src/Login/views/login_prod_view.dart';
import 'package:flutter_flovars/Prod/src/splash/bindings/splash_prod_binding.dart';
import 'package:flutter_flovars/Prod/src/splash/views/splash_prod_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final INITIAL = AppConfig.initialRoutingMap[Flavor.prod.name];

  static final routes = [
    GetPage(
      name: _Paths.LOGIN_DEV,
      page: () => const LoginProdView(),
      binding: LoginDevBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PROD,
      page: () => const LoginProdView(),
      binding: LoginProdBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_DEV,
      page: () => const SplashDevView(),
      binding: SplashDevBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_PROD,
      page: () => const SplashProdView(),
      binding: SplashProdBinding(),
    ),
  ];
}
