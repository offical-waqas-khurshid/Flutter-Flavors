import 'package:get/get.dart';

import '../controllers/home_prod_controller.dart';

class HomeProdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeProdController>(
      () => HomeProdController(),
    );
  }
}
