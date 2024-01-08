import 'package:get/get.dart';

import '../controllers/beneficiary_prod_controller.dart';

class BeneficiaryProdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeneficiaryProdController>(
      () => BeneficiaryProdController(),
    );
  }
}
