import 'package:get/get.dart';

import '../controllers/splash_dev_controller.dart';

class SplashDevBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashDevController>(
      () => SplashDevController(),
    );
  }
}
