import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/my_follows_controller.dart';

class MyFollowsScreen extends GetView<MyFollowsController> {
  const MyFollowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.deepPurpleAccent,
        ),
      ),
    );
  }
}
