import 'package:get/get.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/data/datasource/static/prperties_lists/property_brand_list.dart';
import 'package:store/data/datasource/static/prperties_lists/property_item_list.dart';
import 'package:store/data/model/properties_model/property_item_model.dart';

class PropertiesController extends GetxController {
  int selectIndex = 0;

  void onChanged(index) {
    if (selectIndex == index) {
      taypPropertyIndex = 0;
      statePropertyIndex = 0;
      selectedStateId = null;
      selectedPayTypeId = null;
    } else {
      selectIndex = index;
      taypPropertyIndex = 0;
      statePropertyIndex = 0;
      selectedStateId = null;
      selectedPayTypeId = null;
      selectedPropertyId =
          selectIndex == 0 ? null : propertyBrandList[index].id;
      applyAllFilters();
    }
    update();
  }

  int statePropertyIndex = 0;
  void statePropertyOnChanged(index) {
    statePropertyIndex = index;
    selectedStateId = (index == 0 ? null : lowStatePropertyList[index].idState);
    applyAllFilters();
    update();
  }

  ///////////////////////////
  int taypPropertyIndex = 0;
  void taypPropertyOnChanged(index) {
    taypPropertyIndex = index;
    selectedPayTypeId = (index == 0 ? null : taypPropertyList[index].idState);
    applyAllFilters();

    update();
  }

  /////////////////////////
  ///////////////////////
  bool isCheck = false;
  void checkBoxChanged(value) {
    isCheck = value;
    update();
  }

  ////////////////

  double startValue = 0;
  double endValue = 1000000000;
  void onRangeChanged(values) {
    startValue = values.start;
    endValue = values.end;

    update();
  }

  //////////////////////
  String? selectDropDown;
  regonOnChanged(String item) {
    selectDropDown = item;
    update();
  }

////////////////////////////////////////////
  List<PropertyItemModel> allProperties = propertyItemList;
  List<PropertyItemModel> filteredProperties = [];

  @override
  void onInit() {
    super.onInit();
    filteredProperties = allProperties;
  }

////////////////////////////////

  String? selectedPropertyId;

  String? selectedStateId;
  String? selectedPayTypeId;

  goToPropertyDetails(PropertyItemModel propertyItemModel) {
    Get.toNamed(AppRouts.propertiesDetailsScreen, arguments: {
      'id': propertyItemModel.id,
      'propertyId': propertyItemModel.propertyId,
      'lowStateId': propertyItemModel.lowStateId,
      'stateId': propertyItemModel.stateId,
      'payTypeId': propertyItemModel.payTypeId,
    });
    update();
  }

  /// دالة الفلترة الأساسية
  void applyAllFilters() {
    filteredProperties = allProperties.where((property) {
      final matchBrand = selectedPropertyId == null ||
          property.propertyId == selectedPropertyId;
      final matchPay =
          selectedPayTypeId == null || property.payTypeId == selectedPayTypeId;
      final matchState =
          selectedStateId == null || property.stateId == selectedStateId;

      return matchBrand && matchState && matchPay;
    }).toList();

    update();
  }
}
