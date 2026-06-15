import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:store/core/functions/valid_input.dart';

class SingupController extends GetxController {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController emailController;
  late TextEditingController phoneTextController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();

  ////////////////////////////////////
  bool isobscare = true;
  bool isobsCareconfirm = true;

  /////////////////////////////////////
  PhoneNumber? phoneNumber;
  String initialCountryCode = 'SY';
  ////////////////////////////////////// تغيير  رقم الموبايل
  void onChangedPhoneSingUP(PhoneNumber phone) {
    phoneNumber = phone;

    update();
  }
  ////////////////////////////////////// تغيير رمز الدوله

  void onCountryChangedSingUP(newCountryCode) {
    initialCountryCode = newCountryCode?.dialCode ?? '+963';

    update();
  }

///////////////////////////////////// اختبار حقل الاسم الاول
  String? firtNameValidatorSingUP(val) {
    return validInput(val, 6, 30, 'username');
    // if (firstNameController.text.isEmpty) {
    //   return "SingupController1".tr;
    // }
    // return null;
  }

////////////////////////////////////// اختبار حقل اسم العائله
  String? lastNameValidatorSingUP(val) {
    return validInput(val, 6, 30, 'username');
    // if (lastNameController.text.isEmpty) {
    //   return "SingupController2".tr;
    // }
    // return null;
  }

  ///////////////////////////////// اختبار حقل الايميل
  String? emailValidatorSingUP(val) {
    return validInput(val, 6, 30, 'email');
    // if (emailController.text.isEmpty) {
    //   return "SingupController3".tr;
    // }
    // return null;
  }

  ////////////////////////////////////// اختبار حقل رقم الموبايل
  String? validatorPhoneSingUP() {
    if (phoneTextController.text.isEmpty) {
      return "SingupController4".tr;
    }

    if (phoneTextController.text.length != 9) {
      return 'SingupController5'.tr;
    }
    return null;
  }

  //////////////////////////////////////// اختبار حقل كلمه السر
  String? passValidatorSingUP(val) {
    return validInput(val, 6, 30, 'password');
    // if (passwordController.text.isEmpty) {
    //   return "SingupController6".tr;
    // }
    // if (passwordController.text.length < 6) {
    //   return "SingupController7".tr;
    // }
    // return null;
  }

  //////////////////////////////////////// اختبار حقل تأكيد كلمه السر
  String? passValidatorConfirmSingUP(val) {
    // if (confirmPasswordController.text.isEmpty) {
    //   return "SingupController8".tr;
    // }
    // // if (confirmPasswordController.text.length < 6) {
    // //   return "SingupController9".tr;
    // // }

    if (passwordController.text != confirmPasswordController.text &&
        passwordController.text.isNotEmpty) {
      return "SingupController10".tr;
    }

    return validInput(val, 6, 30, 'password');
  }

  //////////////////////////////////////   حفظ رقم الموبايل
  void onSavedPhoneSingUP(PhoneNumber? phone) {
    phoneNumber = phone;

    update();
  }

//////////////////////////////////////  تبديل ظهور كلمه السر
  void changeSingUP() {
    isobscare = !isobscare;
    update();
  }

//////////////////////////////////////  تبديل ظهور تأكيد كلمه السر
  void changeConfirmSingUP() {
    isobsCareconfirm = !isobsCareconfirm;
    update();
  }

////////////////////////////////////
  bool isCheck = false;
  void checkBoxChanged(value) {
    isCheck = value;
    update();
  }

  //////////////////////////////
  @override
  void onInit() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    emailController = TextEditingController();
    phoneTextController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.onInit();
  }

//////////////////////////////
  @override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneTextController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.onClose();
  }
}
