import 'package:get/get.dart';

import '../controllers/own_transfer_prod_controller.dart';

class OwnTransferProdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OwnTransferProdController>(
      () => OwnTransferProdController(),
    );
  }
}
