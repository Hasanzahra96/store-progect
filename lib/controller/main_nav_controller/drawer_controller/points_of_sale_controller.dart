import 'package:get/get.dart';
import 'package:store/data/model/state_model.dart';

class PointsOfSaleController extends GetxController {
  StateModel? selectPointSaleFilterResultModel;

  void pointSaleFilterResultOnChanged(StateModel value) {
    selectPointSaleFilterResultModel = value;

    update();
  }
  // Add your controller logic here
}
