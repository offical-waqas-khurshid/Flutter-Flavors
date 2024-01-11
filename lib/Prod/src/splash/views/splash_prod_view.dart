import 'package:flutter/material.dart';
import 'package:flutter_flovars/Prod/src/Login/views/login_prod_view.dart';

import 'package:get/get.dart';
import '../controllers/splash_prod_controller.dart';

class SplashProdView extends GetView<SplashProdController> {
  const SplashProdView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashProdView'),
        centerTitle: true,
      ),
      body:  Center(
        child: InkWell(
          onTap: (){
            Get.to(const LoginProdView());
          },
          child: Text(
            'SplashProdView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
