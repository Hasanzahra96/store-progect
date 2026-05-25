import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPasswordController extends GetxController {
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  ////////////////////////////////////
  bool isobscare = true;
  bool isobsCareconfirm = true;
  //////////////////////////////////////// اختبار حقل كلمه السر
  String? passValidator() {
    if (passwordController.text.isEmpty) {
      return "NewPasswordController1".tr;
    }
    if (passwordController.text.length < 6) {
      return "NewPasswordController2".tr;
    }
    return null;
  }

  //////////////////////////////////////// اختبار حقل تأكيد كلمه السر
  String? passValidatorConfirm() {
    if (confirmPasswordController.text.isEmpty) {
      return "NewPasswordController3".tr;
    }
    // if (confirmPasswordController.text.length < 6) {
    //   return "يجب أن تكون كلمة المرور 6 أحرف على الأقل";
    // }
    if (passwordController.text != confirmPasswordController.text) {
      return "NewPasswordController4".tr;
    }
    return null;
  }

//////////////////////////////////////  تبديل ظهور كلمه السر
  void change() {
    isobscare = !isobscare;
    update();
  }

//////////////////////////////////////  تبديل ظهور تأكيد كلمه السر
  void changeConfirm() {
    isobsCareconfirm = !isobsCareconfirm;
    update();
  }

  @override
  void onInit() {
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

//////////////////////////////
  @override
  void onClose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
