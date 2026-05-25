import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyCodePhoneController extends GetxController {
  late TextEditingController verifyCodeController;
  late String verfycode;
  //////////////////////////////
  @override
  void onInit() {
    verifyCodeController = TextEditingController();

    super.onInit();
  }

//////////////////////////////
  @override
  void onClose() {
    verifyCodeController.dispose();
    super.onClose();
  }

  checkCode() {}
}
