import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/functions/valid_input.dart';

class SubscripActivationCardController extends GetxController {
  late TextEditingController activationCodeController;
  /////////
  String? validateActivationCodeCode(val) {
    return validInput(val, 0, 6, '');
  }

  @override
  void onInit() {
    activationCodeController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    activationCodeController.dispose();
    super.dispose();
  }
}
