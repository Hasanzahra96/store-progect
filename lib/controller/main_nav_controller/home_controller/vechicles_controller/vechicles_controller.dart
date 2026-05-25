import 'package:get/get.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/data/datasource/static/vechicles_lists/vechical_item_list.dart';
import 'package:store/data/datasource/static/vechicles_lists/car_brand_list.dart';
import 'package:store/data/datasource/static/vechicles_lists/car_model_list.dart';
import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';

class VechiclesController extends GetxController {
  int stateCarIndex = 0;

  void stateCarOnChanged(index) {
    stateCarIndex = index;
    selectedStateId = (index == 0 ? null : stateCarList[index].idState);
    applyAllFilters();
    update();
  }

  ///////////////////////////
  int taypCarIndex = 0;
  void taypCarOnChanged(index) {
    taypCarIndex = index;
    selectedPayTypeId = (index == 0 ? null : taypCarList[index].idState);
    applyAllFilters();

    update();
  }

  /////////////////////////
  int selectIndex = 0;

  void onChanged(index) {
    var key = carModelList.keys.elementAt(index);

    if (selectIndex == index) {
      carModelIndex = 0;
      stateCarIndex = 0;
      taypCarIndex = 0;
      selectedModelId = null;
      selectedStateId = null;
      selectedPayTypeId = null;
    } else {
      selectIndex = index;
      carModelsList =
          carModelList[key]?.map((model) => model.title ?? '').toList() ?? [];
      carModelIndex = 0;
      stateCarIndex = 0;
      taypCarIndex = 0;
      selectedModelId = null;
      selectedStateId = null;
      selectedPayTypeId = null;
    }

    selectedBrandId = selectIndex == 0 ? null : carBrandList[index].id;
    applyAllFilters();

    update();
  }

  List<String> carModelsList = [];

  /////////////////////////////
  int carModelIndex = 0;
  void carModelOnChanged(index) {
    carModelIndex = index;

    var key = carModelList.keys.elementAt(selectIndex);
    selectedModelId = carModelIndex == 0 ? null : carModelList[key]?[index].id;
    applyAllFilters();
    update();
  }

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
  List<VechicleItemModel> allVehicles = vehiclesItemList;
  List<VechicleItemModel> filteredVehicles = [];

  @override
  void onInit() {
    super.onInit();
    filteredVehicles = allVehicles;
  }

////////////////////////////////

  String? selectedBrandId;

  String? selectedModelId;

  String? selectedStateId;
  String? selectedPayTypeId;

  goToVechicleDetails(VechicleItemModel vechicleItemModel) {
    Get.toNamed(AppRouts.vechiclesDetailsScreen, arguments: {
      // 'vechicleItemModel': vechicleItemModel,
      'id': vechicleItemModel.id,
      'brandId': vechicleItemModel.brandId,
      'stateId': vechicleItemModel.stateId,
      'payTypeId': vechicleItemModel.payTypeId,
    });
    update();
  }

  /// دالة الفلترة الأساسية
  void applyAllFilters() {
    filteredVehicles = allVehicles.where((vehicle) {
      final matchBrand =
          selectedBrandId == null || vehicle.brandId == selectedBrandId;
      final matchModel =
          selectedModelId == null || vehicle.modelId == selectedModelId;
      final matchPay =
          selectedPayTypeId == null || vehicle.payTypeId == selectedPayTypeId;
      final matchState =
          selectedStateId == null || vehicle.stateId == selectedStateId;

      return matchBrand && matchModel && matchState && matchPay;
    }).toList();

    update();
  }
/////////////////////////////////////////////////////////
}
