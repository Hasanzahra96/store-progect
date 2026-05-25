import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';

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
    print(phoneNumber);
    update();
  }
  ////////////////////////////////////// تغيير رمز الدوله

  void onCountryChangedSingUP(newCountryCode) {
    initialCountryCode = newCountryCode?.dialCode ?? '+963';
    print(initialCountryCode);
    update();
  }

///////////////////////////////////// اختبار حقل الاسم الاول
  String? firtNameValidatorSingUP() {
    if (firstNameController.text.isEmpty) {
      return "SingupController1".tr;
    }
    return null;
  }

////////////////////////////////////// اختبار حقل اسم العائله
  String? lastNameValidatorSingUP() {
    if (lastNameController.text.isEmpty) {
      return "SingupController2".tr;
    }
    return null;
  }

  ///////////////////////////////// اختبار حقل الايميل
  String? emailValidatorSingUP() {
    if (emailController.text.isEmpty) {
      return "SingupController3".tr;
    }
    return null;
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
  String? passValidatorSingUP() {
    if (passwordController.text.isEmpty) {
      return "SingupController6".tr;
    }
    if (passwordController.text.length < 6) {
      return "SingupController7".tr;
    }
    return null;
  }

  //////////////////////////////////////// اختبار حقل تأكيد كلمه السر
  String? passValidatorConfirmSingUP() {
    if (confirmPasswordController.text.isEmpty) {
      return "SingupController8".tr;
    }
    // if (confirmPasswordController.text.length < 6) {
    //   return "SingupController9".tr;
    // }
    if (passwordController.text != confirmPasswordController.text &&
        passwordController.text.isNotEmpty) {
      return "SingupController10".tr;
    }
    return null;
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

  /////////////////////////////////////
  bool isPasswordMatch() {
    return passwordController.text == confirmPasswordController.text;
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
