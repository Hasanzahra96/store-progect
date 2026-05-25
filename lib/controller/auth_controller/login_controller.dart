import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';

class LoginController extends GetxController {
  bool isobscare = true;
  FocusNode focusNode = FocusNode();

  late TextEditingController phoneTextController;
  late TextEditingController passwordController;

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
  String? passValidator() {
    if (passwordController.text.isEmpty) {
      return "LoginController3".tr;
    }
    if (passwordController.text.length < 6) {
      return "LoginController4".tr;
    }
    return null;
  }

  ////////////////////////////////////////   حفظ رقم الموبايل
  void onSaved(PhoneNumber? phone) {
    phoneNumber = phone;

    update();
  }

////////////////////////////////////////  تبديل ظهور كلمه السر
  void change() {
    isobscare = !isobscare;
    update();
  }

///////////////////////////////////  دمج رمز الدوله مع رقم الموبايل
  String getFullPhoneNumber() {
    return initialCountryCode + phoneNumber.toString();
  }

//////////////////////////////

  void closeKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

///////////////////////////
  @override
  void onInit() {
    phoneTextController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
    update();
  }

//////////////////////////////
  @override
  void onClose() {
    phoneTextController.dispose();
    passwordController.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
    super.onClose();
  }

  void showSucess() {
    // showSucessToast("تم تسجيل الدخول بنجاح");
    update();
  }

  ////
  // String? phoneError;
  // // دالة للتحقق من صحة رقم الهاتف
  // bool validatePhone() {
  //   if (phoneTextController.text.isEmpty) {
  //     phoneError = "رقم الهاتف مطلوب";
  //     update();
  //     return false;
  //   }
  //   // أضف المزيد من التحقق حسب الحاجة
  //   phoneError = null;
  //   update();
  //   return true;
  // }
  //
}
