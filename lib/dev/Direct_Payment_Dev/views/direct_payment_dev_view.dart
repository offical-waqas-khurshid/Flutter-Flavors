import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/direct_payment_dev_controller.dart';

class DirectPaymentDevView extends GetView<DirectPaymentDevController> {
  const DirectPaymentDevView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DirectPaymentDevView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DirectPaymentDevView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
