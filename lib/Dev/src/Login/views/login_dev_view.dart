import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_dev_controller.dart';

class LoginDevView extends GetView<LoginDevController> {
  const LoginDevView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginDevView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LoginDevView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
