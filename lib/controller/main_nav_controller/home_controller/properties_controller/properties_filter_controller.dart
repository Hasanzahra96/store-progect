import 'package:get/get.dart';
import 'package:store/data/datasource/static/prperties_lists/property_filter_lists.dart';
import 'package:store/data/model/properties_model/property_feature.dart';
import 'package:store/data/model/state_model.dart';

class PropertiesFilterController extends GetxController {
  int selectedpayTaypIndex = 0;
  void paytaypListOnChanged(index) {
    selectedpayTaypIndex = index;
    update();
  }

  //////////////////////

  StateModel? selectPropertyTypeModel;
  String? propertyId;
  String? propertyType;
  propertyTypeOnChanged(StateModel value) {
    selectPropertyTypeModel = value;
    propertyId = value.idState;

    update();
  }

  ////////////////
  double startPriceValue = 0;
  double endPriceValue = 1000000000;
  void onRangePriceChanged(values) {
    startPriceValue = values.start;
    endPriceValue = values.end;

    update();
  }

  ////////////////
  double startValue = 0;
  double endValue = 1000000000;
  void onRangeChanged(values) {
    startValue = values.start;
    endValue = values.end;

    update(['BasicInfo', 'BasicInfoland']);
  }

  //////////////////////
  int selectedRoomNumIndex = 0;
  int selectedBathRoomNumIndex = 0;

  void numListOnChanged(String casee, int index) {
    switch (casee) {
      case 'Room':
        selectedRoomNumIndex = index;
        break;
      case 'BathRoom':
        selectedBathRoomNumIndex = index;
        break;
    }
    update(['BasicInfo']);
  }

  //////////////////////
  int selectedStateIndex = 0;
  int selectedDirectionIndex = 0;
  int selectedFurnishIndex = 0;
  int selectedLandStateIndex = 0;

  void stateListOnChanged(String casee, int index) {
    switch (casee) {
      case 'State':
        selectedStateIndex = index;
        update(['State']);
        break;
      case 'Direction':
        selectedDirectionIndex = index;
        update(['State']);
        break;
      case 'Furnish':
        selectedFurnishIndex = index;
        update(['State']);
        break;
      case 'LandState':
        selectedLandStateIndex = index;
        update(['LandState']);
        break;
    }
  }

  void featurcheckBoxChanged(PropertyFeature feature, bool value) {
    feature.isSelected = value;
    update(['State', 'LandState']);
  }

  void resetFeatures() {
    for (var f in propertyFilterFeaturesList) {
      f.isSelected = false;
    }
    for (var f in landFilterFeatureList) {
      f.isSelected = false;
    }
  }

  @override
  void onClose() {
    resetFeatures();
    super.onClose();
  }
}
