import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:learn_getx/widgets/app_input.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: const [
            Text(
              'HomeScreen is working',
              style: TextStyle(fontSize: 20),
            ),
            AppInput(hint: 'Email'),
          ],
        ),
      ),
    );
  }
}
