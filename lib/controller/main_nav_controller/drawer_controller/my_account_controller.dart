import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/core/functions/back_dialog.dart';
import 'package:store/core/functions/valid_input.dart';

class MyAccountController extends GetxController {
  final AddPhotoController addPhotoController = Get.find(tag: 'myaccount');
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
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
  String? passValidatorConfirm(val) {
    if (newPassController.text != confirmPassController.text &&
        newPassController.text.isNotEmpty) {
      return "SingupController10".tr;
    }

    return validInput(val, 6, 30, 'password');
  }

  void showDialoge() {
    showCustomDialog(
        'هل أنت متأكد ؟',
        'عند التأكيد سوف يتم حذف حسابك نهائيا و إلغاء الاشتراك و لن تتمكن من الرجوع إليه في المستقبل',
        () {},
        () {});
  }

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
