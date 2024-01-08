import 'package:get/get.dart';

import '../controllers/beneficiary_dev_controller.dart';

class BeneficiaryDevBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeneficiaryDevController>(
      () => BeneficiaryDevController(),
    );
  }
}
