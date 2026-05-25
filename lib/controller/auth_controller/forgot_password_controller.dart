import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';

class ForgotPasswordController extends GetxController {
  late TextEditingController phoneTextController;
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
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
      return "ForgotPasswordController1".tr;
    }

    if (phoneTextController.text.length != 9) {
      return 'ForgotPasswordController2'.tr;
    }
    return null;
  }

  ////////////////////////////////////////   حفظ رقم الموبايل
  void onSaved(PhoneNumber? phone) {
    phoneNumber = phone;

    update();
  }

///////////////////////////////////  دمج رمز الدوله مع رقم الموبايل
  String getFullPhoneNumber() {
    return initialCountryCode + phoneNumber.toString();
  }

  //////////////////////////////
  @override
  void onInit() {
    phoneTextController = TextEditingController();

    super.onInit();
  }

//////////////////////////////
  @override
  void onClose() {
    phoneTextController.dispose();
    super.onClose();
  }

  ///////////////////////////////// التحقق من الرقم
  checkPhone() {}
}
