import 'package:flutter/material.dart';
import 'package:flutter_flovars/Navigations_interface.dart';

import 'package:get/get.dart';

import '../controllers/beneficiary_controller.dart';

class BeneficiaryView extends GetView<BeneficiaryController> implements NavigationInterface {
  const BeneficiaryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BeneficiaryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BeneficiaryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  navigation() {
    print("This is screen of Beneficiary Screen");
  }
}
