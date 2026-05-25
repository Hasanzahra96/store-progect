import 'package:get/get.dart';
import 'package:store/data/model/state_model.dart';
import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';

class VechiclesFilterResultController extends GetxController {
  StateModel? selectSortFilterResultModel;

  sortFilterResultOnChanged(StateModel value) {
    selectSortFilterResultModel = value;

    update();
  }

  /////////////////////////
  List<Map<String, String>> getFilteredFeatures(
    VechicleItemModel vechicleItemModel,
  ) {
    List<Map<String, String>> list = [];

    list.add({'label': 'نوع الجير', 'feature': 'اوتو'});
    list.add({'label': 'الممشى', 'feature': "10000"});
    list.add(
        {'label': 'نوع الوقود', 'feature': vechicleItemModel.feuleType ?? ''});

    return list;
  }
}
