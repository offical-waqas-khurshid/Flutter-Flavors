import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_dev_controller.dart';

class HomeDevView extends GetView<HomeDevController> {
  dynamic arguments;

  HomeDevView([this.arguments = const {}]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeDevView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeDevView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
