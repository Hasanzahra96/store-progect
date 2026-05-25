import 'package:get/get.dart';
import 'package:store/core/functions/back_dialog.dart';
import 'package:store/data/datasource/static/vechicles_lists/car_filter_lists.dart';
import 'package:store/data/model/vechicle_model/car_feature.dart';

class VechiclesFilterController extends GetxController {
  /////////////////////////
  int selectedpayTaypIndex = 0;
  void paytaypListOnChanged(index) {
    selectedpayTaypIndex = index;
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
  /////////////////////////
  int selectedGeerTaypIndex = 0;
  int selectedFeuleTaypIndex = 0;
  int selectedStateIndex = 0;
  void taypListOnChanged(String casee, int index) {
    switch (casee) {
      case 'Geer':
        selectedGeerTaypIndex = index;
        break;
      case 'Feule':
        selectedFeuleTaypIndex = index;
        break;
      case 'State':
        selectedStateIndex = index;
        break;
    }
    update();
  }

  void featurcheckBoxChanged(CarFeature feature, bool value) {
    feature.isSelected = value;
    update();
  }

  void resetCarFeatures() {
    for (var f in carFilterFeatureList) {
      f.isSelected = false;
    }
  }

////////////////////
  void showDialoge() {
    show(
      'هل أنت متأكد من الإجراء الحالي؟',
      'عند التأكيد سوف يتم حذف جميع البيانات المدخلة ',
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
  void onClose() {
    resetCarFeatures();

    super.onClose();
  }
}
