import 'package:flutter/material.dart';
import 'package:flutter_flovars/Dev/src/Login/views/login_dev_view.dart';

import 'package:get/get.dart';
import '../controllers/splash_dev_controller.dart';

class SplashDevView extends GetView<SplashDevController> {
  const SplashDevView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashDevView'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: (){
            Get.to(const LoginDevView());
          },
          child: Text(
            'SplashDevView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
