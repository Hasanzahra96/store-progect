import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/core/functions/valid_input.dart';
import 'package:store/data/datasource/static/drawer_list/payment_list.dart';
import 'package:store/data/model/drawer_model/payment_model.dart';

class ContinuePaymentController extends GetxController {
  late final PaymentModel payment;
  late final String? paymentId;
  late final String subscribeId;
  intialData() {
    paymentId = Get.arguments['id'];
    subscribeId = Get.arguments['subscribeId'];
    payment = paymentList.singleWhere((element) => element.id == paymentId);
    update();
  }

  goToConfirmPaymentScreen() {
    Get.toNamed(AppRouts.confirmPaymentScreen,
        arguments: {'id': paymentId, 'subscribeId': subscribeId});
    update();
  }

  /////////
  bool isobscare = true;
  FocusNode focusNode = FocusNode();

  late TextEditingController phoneTextController;
  late TextEditingController syriatelpasswordController;
  late TextEditingController accountNumberController;
  late TextEditingController shampasswordController;

  //
  PhoneNumber? phoneNumber;
  String initialCountryCode = 'SY';
  //////////////////////////////////////// تغيير  رقم الموبايل
  void onChanged(PhoneNumber phone) {
    phoneNumber = phone;
    print(phoneNumber);
    update();
  }

  ////////////////////////////////////// تغيير رمز الدوله
  void onCountryChanged(newCountryCode) {
    initialCountryCode = newCountryCode?.dialCode ?? '+963';
    print(initialCountryCode);
    update();
  }

  /////////////////////////////////////// اختبار حقل رقم الموبايل
  String? validator() {
    if (phoneTextController.text.isEmpty) {
      return "LoginController1".tr;
    }

    if (phoneTextController.text.length != 9) {
      return 'LoginController2'.tr;
    }
    return null;
  }

  ////////////////////////////////////////// اختبار حقل كلمه السر
  String? passValidator(String val) {
    return validInput(val, 0, 30, '');
  }
  ////////////////////////////////////////  تبديل ظهور كلمه السر

  void change() {
    isobscare = !isobscare;
    update();
  }

  @override
  void onInit() {
    intialData();
    phoneTextController = TextEditingController();
    syriatelpasswordController = TextEditingController();
    accountNumberController = TextEditingController();
    shampasswordController = TextEditingController();
    super.onInit();
  }

//////////////////////////////
  @override
  void onClose() {
    phoneTextController.dispose();
    syriatelpasswordController.dispose();
    accountNumberController.dispose();
    shampasswordController.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
    super.onClose();
  }
}
