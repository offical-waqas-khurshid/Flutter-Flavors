import 'package:flutter/material.dart';
import 'package:flutter_flovars/Navigations_interface.dart';

import 'package:get/get.dart';

import '../controllers/own_transfer_controller.dart';

class OwnTransferView extends GetView<OwnTransferController> implements NavigationInterface{
  const OwnTransferView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OwnTransferView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OwnTransferView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  navigation() {
    print("This screen is General Own Transfer");
  }
}
