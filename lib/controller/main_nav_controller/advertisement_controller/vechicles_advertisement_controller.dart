import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/functions/back_dialog.dart';
import 'package:store/data/datasource/static/vechicles_lists/car_brand_list.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/data/model/vechicle_model/car_feature.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';

class VechiclesAdvertisementController extends GetxController {
  final AddPhotoController addPhotoController = Get.find(tag: 'vechicles');
  late TextEditingController locationController;
  late TextEditingController keloMeterController;
  late TextEditingController enginCapController;
  late TextEditingController extColorController;
  late TextEditingController doorNumController;
  late TextEditingController acxedentController;
  late TextEditingController intColorController;
  late TextEditingController deskTybeController;
  late TextEditingController moreInfoController;
  late TextEditingController priceController;
  late TextEditingController firstPaymentController;
  late TextEditingController monthNumController;
  late TextEditingController monthlyPaymentController;
  late TextEditingController atherPhoneNumperController;
  late TextEditingController whatsUpNumperController;

//////////
  String? selectregonDropDown;
  regonOnChanged(String value) {
    selectregonDropDown = value;
    update(['location']);
  }

///////////////
  final List carBrandlist = carBrandList.map((model) => model.title).toList();
  final List yearlist = ["2000", "2005", "2006"];
  final List geerlist = ["اوتو", "عادي"];
  final List fiolelist = ["بنزين", "مازوت"];
  final List countTybelist = ["0", "1"];
  String? selectedCarBrand;
  String? selectedCarModel;
  String? selectedYear;
  String? selectedGeer;
  String? selectedFiole;
  String? selectedCountTybe;
  ////////////
  void basicdropdownChanged(String? value, int dropdownType) {
    switch (dropdownType) {
      case 1:
        selectedCarBrand = value ?? '';
        break;
      case 2:
        selectedCarModel = value ?? '';
        break;
      case 3:
        selectedYear = value ?? '';
        break;
      case 4:
        selectedGeer = value ?? '';
        break;
      case 5:
        selectedFiole = value ?? '';
        break;
      case 6:
        selectedCountTybe = value ?? '';
        break;
    }
    update(['basicInfo']);
  }

  /////////////////////
  var selectedState = 0;
  int selectedTaypIndex = 0;
  int allSelectedTaypIndex = -1;
  void onStateChanged(String state, int index) {
    switch (state) {
      case 'state':
        selectedState = index;
        update(['basicInfo', 'exterior']);
        break;
      case 'tayp':
        selectedTaypIndex = index;
        update(['basicInfo', 'priceInfo']);

        break;
      case 'alltayp':
        allSelectedTaypIndex = index;
        update(['basicInfo']);
    }
  }

  //////////////////////
  var selectedAcxedentState = 0;
  void onacxedentStateChanged(int index) {
    selectedAcxedentState = index;
    update(['exterior']);
  }

/////////////////
  void acxedentCheckBoxChanged(CarFeature feature, bool value) {
    feature.isSelected = value;
    update(['exterior']);
  }

  //////////////////////
  void featurcheckBoxChanged(CarFeature feature, bool value) {
    feature.isSelected = value;
    update(['featur']);
  }

  //////////////
  int selectedValueContact = 0;
  void radioContactChangeValue(int value) {
    selectedValueContact = value;
    update(['contact']);
  }

  ///////////////////////
  bool isCheck1 = false;
  bool isCheck2 = false;

  void checkBoxChangedNumper(value, int isCheck) {
    switch (isCheck) {
      case 1:
        isCheck1 = value;
        break;
      case 2:
        isCheck2 = value;
        break;
    }
    update(['contact']);
  }

////////////
  void resetCarFeatures() {
    for (var f in carFeatureAdsList) {
      f.isSelected = false;
    }

    for (var f in carCheckAdsItems) {
      f.isSelected = false;
    }
  }

  ///////////////////////////
  void showDialoge() {
    show(
      'هل أنت متأكد من العودة إلى الوراء؟',
      'عند التأكيد سوف يتم الاحتفاظ بنسخة احتياطية من البيانات المدخلة',
      () {
        Get.back();
        Get.back();
      },
      () {
        Get.back();
      },
    );
  }

  @override
  void onInit() {
    locationController = TextEditingController();
    keloMeterController = TextEditingController();
    enginCapController = TextEditingController();
    extColorController = TextEditingController();
    doorNumController = TextEditingController();
    acxedentController = TextEditingController();
    intColorController = TextEditingController();
    deskTybeController = TextEditingController();
    moreInfoController = TextEditingController();
    priceController = TextEditingController();
    firstPaymentController = TextEditingController();
    monthNumController = TextEditingController();
    monthlyPaymentController = TextEditingController();
    atherPhoneNumperController = TextEditingController();
    whatsUpNumperController = TextEditingController();
    super.onInit();
    update();
  }

  @override
  void onClose() {
    resetCarFeatures();
    locationController.dispose();
    keloMeterController.dispose();
    enginCapController.dispose();
    extColorController.dispose();
    doorNumController.dispose();
    acxedentController.dispose();
    intColorController.dispose();
    deskTybeController.dispose();
    moreInfoController.dispose();
    priceController.dispose();
    firstPaymentController.dispose();
    monthNumController.dispose();
    monthlyPaymentController.dispose();
    atherPhoneNumperController.dispose();
    whatsUpNumperController.dispose();

    super.onClose();
  }

  //////////////
}
