import 'package:get/get.dart';

import '../controllers/own_transfer_dev_controller.dart';

class OwnTransferDevBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OwnTransferDevController>(
      () => OwnTransferDevController(),
    );
  }
}
