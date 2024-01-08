import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/own_transfer_dev_controller.dart';

class OwnTransferDevView extends GetView<OwnTransferDevController> {
  const OwnTransferDevView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OwnTransferDevView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OwnTransferDevView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
