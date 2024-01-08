import 'package:flutter/material.dart';
import 'package:flutter_flovars/Navigations_interface.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView  extends GetView<HomeController> implements NavigationInterface{
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  navigation() {
    print("The Screen name is General Home");
  }
}
