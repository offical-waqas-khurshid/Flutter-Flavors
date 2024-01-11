import 'package:get/get.dart';

import '../controllers/login_dev_controller.dart';

class LoginDevBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginDevController>(
      () => LoginDevController(),
    );
  }
}
