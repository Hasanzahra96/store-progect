import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/functions/valid_input.dart';

class EmailCheckController extends GetxController {
  late TextEditingController emailController;
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  ///////////////////////////////// اختبار حقل الايميل
  String? emailValidator(val) {
    // if (emailController.text.isEmpty) {
    //   return "EmailCheckController1".tr;
    // }
    // return null;
    return validInput(val, 6, 30, 'email');
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
