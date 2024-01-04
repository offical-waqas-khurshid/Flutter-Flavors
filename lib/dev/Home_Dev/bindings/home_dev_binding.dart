import 'package:get/get.dart';

import '../controllers/home_dev_controller.dart';

class HomeDevBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeDevController>(
      () => HomeDevController(),
    );
  }
}
