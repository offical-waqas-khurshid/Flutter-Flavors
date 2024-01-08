import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/direct_payment_prod_controller.dart';

class DirectPaymentProdView extends GetView<DirectPaymentProdController> {
  const DirectPaymentProdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DirectPaymentProdView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DirectPaymentProdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
