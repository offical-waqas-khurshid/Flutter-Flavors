import 'package:get/get.dart';

import '../controllers/login_prod_controller.dart';

class LoginProdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginProdController>(
      () => LoginProdController(),
    );
  }
}
