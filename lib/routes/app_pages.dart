import 'package:flutter_flovars/dev/Home_Dev/bindings/home_dev_binding.dart';
import 'package:flutter_flovars/dev/Home_Dev/views/home_dev_view.dart';
import 'package:flutter_flovars/prod/Home_Prod/bindings/home_prod_binding.dart';
import 'package:flutter_flovars/prod/Home_Prod/views/home_prod_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.;

  static final routes = [
    GetPage(
      name: _Paths.HOME_DEV,
      page: () => const HomeDevView(),
      binding: HomeDevBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PROD,
      page: () => const HomeProdView(),
      binding: HomeProdBinding(),
    ),
  ];
}
