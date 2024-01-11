import 'package:get/get.dart';

import '../controllers/splash_prod_controller.dart';

class SplashProdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashProdController>(
      () => SplashProdController(),
    );
  }
}
