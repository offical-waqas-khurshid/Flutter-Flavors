import 'package:get/get.dart';

import '../controllers/direct_payment_prod_controller.dart';

class DirectPaymentProdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DirectPaymentProdController>(
      () => DirectPaymentProdController(),
    );
  }
}
