import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/core/functions/valid_input.dart';

class SuggestOfficeController extends GetxController {
  final AddPhotoController addPhotoController = Get.find(tag: 'suggestOffice');
  late final TextEditingController officeNameController;
  late final TextEditingController manegreNameController;
  late final TextEditingController phoneController;
  late final TextEditingController addressController;
  late final TextEditingController notesController;

  String? officeNameValidatorSingUP(val) {
    return validInput(val, 6, 30, 'username');
  }

  String? manegreNameValidatorSingUP(val) {
    return validInput(val, 6, 30, 'username');
  }

  ////////////////////////////////////// اختبار حقل رقم الموبايل
  String? validatorPhoneSingUP() {
    if (phoneController.text.isEmpty) {
      return "SingupController4".tr;
    }

    if (phoneController.text.length != 9) {
      return 'SingupController5'.tr;
    }
    return null;
  }

  String? addressValidatorSingUP(val) {
    return validInput(val, 6, 30, 'username');
  }

  String? notesValidatorSingUP(val) {
    return validInput(val, 6, 30, 'username');
  }

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

  final RxBool isLoading = false.obs;

  Future<void> sendSuggestion() async {
    isLoading.value = true;
    try {
      // await suggestOfficeRepository.sendSuggestion(
      //   name: nameController.text,
      //   email: emailController.text,
      //   phone: phoneController.text,
      //   message: messageController.text,
      // );
      Get.snackbar('Success', 'Your suggestion has been sent successfully.');
      clearFields();
    } catch (e) {
      Get.snackbar('Error', 'Failed to send suggestion. Please try again.');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    officeNameController = TextEditingController();
    manegreNameController = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    notesController = TextEditingController();
    super.onInit();
  }

  clearFields() {
    officeNameController.clear();
    manegreNameController.clear();
    phoneController.clear();
    addressController.clear();
    notesController.clear();
  }

  @override
  void onClose() {
    officeNameController.dispose();
    manegreNameController.dispose();
    phoneController.dispose();
    addressController.dispose();
    notesController.dispose();
    super.onClose();
  }
}
