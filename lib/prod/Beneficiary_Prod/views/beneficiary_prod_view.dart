import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/beneficiary_prod_controller.dart';

class BeneficiaryProdView extends GetView<BeneficiaryProdController> {
  const BeneficiaryProdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BeneficiaryProdView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BeneficiaryProdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
