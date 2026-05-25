import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailCheckController extends GetxController {
  late TextEditingController emailController;
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  ///////////////////////////////// اختبار حقل الايميل
  String? emailValidator() {
    if (emailController.text.isEmpty) {
      return "EmailCheckController1".tr;
    }
    return null;
  }

  //////////////////////////////
  @override
  void onInit() {
    emailController = TextEditingController();

    super.onInit();
  }

//////////////////////////////
  @override
  void onClose() {
    emailController.dispose();
    super.onClose();
  }

  ///////////////////////////////// التحقق من الايميل
  checkEmail() {}
}
