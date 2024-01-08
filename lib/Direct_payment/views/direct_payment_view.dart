import 'package:flutter/material.dart';
import 'package:flutter_flovars/Navigations_interface.dart';

import 'package:get/get.dart';

import '../controllers/direct_payment_controller.dart';

class DirectPaymentView extends GetView<DirectPaymentController> implements NavigationInterface{
  const DirectPaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DirectPaymentView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DirectPaymentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  navigation() {
    print("This is creen is Direct Payment");
  }
}
