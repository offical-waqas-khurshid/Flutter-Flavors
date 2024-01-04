import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_prod_controller.dart';

class HomeProdView extends GetView<HomeProdController> {
  const HomeProdView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeProdView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeProdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
