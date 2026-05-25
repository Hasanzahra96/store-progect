import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/functions/back_dialog.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/data/model/properties_model/property_feature.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/data/model/state_model.dart';

class PropertiesAdvertisementController extends GetxController {
  final AddPhotoController addPhotoController = Get.find(tag: 'properties');

  late TextEditingController locationController;
  late TextEditingController spaceController;
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

/////////////
  bool get isPropertyTypeSelected {
    return selectPropertyTypeModel != null &&
        ['1', '2', '3', '4'].contains(selectPropertyTypeModel!.idState);
  }

  StateModel? selectPropertyTypeModel;
  String? propertyId;
  String? propertyType;
  propertyTypeOnChanged(StateModel value) {
    selectPropertyTypeModel = value;
    propertyId = value.idState;

    update(['basicInfo', 'detail']);
  }

  /////////////////////
  int selectedState = 0;
  int selectedStateLand = 0;
  int lowSelectedState = 0;
  int selectedTaypIndex = 0;
  int allSelectedTaypIndex = -1;
  void onStateChanged(String state, int index) {
    switch (state) {
      case 'state':
        selectedState = index;
        update([
          'basicInfo',
          'detail',
        ]);
        break;
      case 'lowstate':
        lowSelectedState = index;
        update(['basicInfo']);
        break;
      case 'tayp':
        selectedTaypIndex = index;
        update([
          'basicInfo',
          "priceInfo",
        ]);
        break;
      case 'alltayp':
        allSelectedTaypIndex = index;
        update(['basicInfo']);
        break;
      case 'stateLand':
        selectedStateLand = index;
        update(['basicInfo', 'landFeature']);
    }
  }

  ////////
  int monthCount = 0;
  incrementMonthCount() {
    monthCount++;
    update(['basicInfo']);
  }

  decrementMonthCount() {
    if (monthCount > 0) {
      monthCount--;
      update(['basicInfo']);
    }
  }

  //////////////
  void featurcheckBoxChanged(PropertyFeature feature, bool value) {
    feature.isSelected = !value;

    update(['feature']);
  }

  /////////////
  int floorCount = 0;
  incrementFloorCount() {
    floorCount++;
    update(['feature']);
  }

  decrementFloorCount() {
    if (floorCount > 0) {
      floorCount--;
      update(['feature']);
    }
  }

  //////////////////
  int roomCount = 0;
  int bathRoomCount = 0;
  int terraceCount = 0;
  void incrementDetailChanged(int casee) {
    switch (casee) {
      case 1:
        roomCount++;
        break;
      case 2:
        bathRoomCount++;
        break;
      case 3:
        terraceCount++;
        break;
    }
    update(['detail']);
  }

  void decrementDetailChanged(int casee) {
    switch (casee) {
      case 1:
        if (roomCount > 0) {
          roomCount--;
        }
        break;
      case 2:
        if (bathRoomCount > 0) {
          bathRoomCount--;
        }
        break;
      case 3:
        if (terraceCount > 0) {
          terraceCount--;
        }
        break;
    }
    update(['detail']);
  }

  //////////////
  int selectedValueDetail = 0;
  void radioDetailChangeValue(int value) {
    selectedValueDetail = value;
    update(['detail']);
  }

  /////////////////////
  var decoreState = -1;
  void onDecoreStateChanged(int index) {
    decoreState = index;
    update([
      'detail',
    ]);
  }

  var selectedValues = <String, String?>{};

  void updateValue(String key, String? value) {
    selectedValues[key] = value;
    update(['detail']);
  }

  //////////////
  void moreFeatureListOnChanged(PropertyFeature feature, bool value) {
    feature.isSelected = !value;
    update(['detail']);
  }

//////////////////////
  void landfeaturcheckBoxChanged(PropertyFeature feature, bool value) {
    feature.isSelected = value;
    update(['landFeature']);
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
    for (var f in propertyFeaturesAdsList) {
      f.isSelected = false;
    }
    for (var f in morePropertyAdsFeaturesList) {
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
    spaceController = TextEditingController();
    moreInfoController = TextEditingController();
    priceController = TextEditingController();
    firstPaymentController = TextEditingController();
    monthNumController = TextEditingController();
    monthlyPaymentController = TextEditingController();
    atherPhoneNumperController = TextEditingController();
    whatsUpNumperController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    resetCarFeatures();
    locationController.dispose();
    spaceController.dispose();
    moreInfoController.dispose();
    priceController.dispose();
    firstPaymentController.dispose();
    monthNumController.dispose();
    monthlyPaymentController.dispose();
    atherPhoneNumperController.dispose();
    whatsUpNumperController.dispose();
    super.onClose();
  }
}
