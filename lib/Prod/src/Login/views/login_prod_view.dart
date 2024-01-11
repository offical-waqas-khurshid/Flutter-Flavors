import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_prod_controller.dart';

class LoginProdView extends GetView<LoginProdController> {
  const LoginProdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginProdView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginProdView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
