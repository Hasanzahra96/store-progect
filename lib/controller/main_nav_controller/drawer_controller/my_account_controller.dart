import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccountController extends GetxController {
  late TextEditingController officeNameController;
  late TextEditingController numberController;
  late TextEditingController newPassController;
  late TextEditingController confirmPassController;
  bool isEdit = false;
  bool isPassEdit = false;
  void onChangeEdit(String edit) {
    switch (edit) {
      case 'account type':
        isEdit = !isEdit;
        update(['accountType']);
        break;
      case 'pass':
        isPassEdit = !isPassEdit;
        update(['pass']);

        break;
    }
  }

  //////////////
  int selectedValueContact = 1;
  void radioContactChangeValue(int value) {
    selectedValueContact = value;
    update(['accountType']);
  }

  ////////////////////////////////////
  bool isobscare = true;
  bool isobsCareconfirm = true;

//////////////////////////////////////  تبديل ظهور كلمه السر
  void changeSingUP() {
    isobscare = !isobscare;
    update(['pass']);
  }

//////////////////////////////////////  تبديل ظهور تأكيد كلمه السر
  void changeConfirmSingUP() {
    isobsCareconfirm = !isobsCareconfirm;
    update(['pass']);
  }

  ///////////////////////
  @override
  void onInit() {
    officeNameController = TextEditingController();
    numberController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();

    super.onInit();
    update();
  }

  @override
  void onClose() {
    officeNameController.dispose();
    numberController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();

    super.onClose();
  }
}
