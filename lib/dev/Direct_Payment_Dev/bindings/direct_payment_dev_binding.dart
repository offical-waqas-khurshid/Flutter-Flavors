import 'package:get/get.dart';

import '../controllers/direct_payment_dev_controller.dart';

class DirectPaymentDevBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DirectPaymentDevController>(
      () => DirectPaymentDevController(),
    );
  }
}
