import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/own_transfer_prod_controller.dart';

class OwnTransferProdView extends GetView<OwnTransferProdController> {
  const OwnTransferProdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OwnTransferProdView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OwnTransferProdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
