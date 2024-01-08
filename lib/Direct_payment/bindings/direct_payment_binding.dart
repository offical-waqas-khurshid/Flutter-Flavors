import 'package:get/get.dart';

import '../controllers/direct_payment_controller.dart';

class DirectPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DirectPaymentController>(
      () => DirectPaymentController(),
    );
  }
}
