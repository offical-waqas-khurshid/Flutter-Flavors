import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beneficiary_dev_controller.dart';

class BeneficiaryDevView extends GetView<BeneficiaryDevController> {
  const BeneficiaryDevView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BeneficiaryDevView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BeneficiaryDevView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
