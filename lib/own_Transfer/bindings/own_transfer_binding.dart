import 'package:get/get.dart';

import '../controllers/own_transfer_controller.dart';

class OwnTransferBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OwnTransferController>(
      () => OwnTransferController(),
    );
  }
}
