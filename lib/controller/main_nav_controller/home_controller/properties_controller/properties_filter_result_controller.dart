import 'package:get/get.dart';
import 'package:store/data/model/properties_model/property_item_model.dart';
import 'package:store/data/model/state_model.dart';

class PropertiesFilterResultController extends GetxController {
  StateModel? selectSortFilterResultModel;

  sortFilterResultOnChanged(StateModel value) {
    selectSortFilterResultModel = value;

    update();
  }

  /////////////////////////
  List<Map<String, String>> getFilteredFeatures(
    PropertyItemModel propertytemMode,
  ) {
    List<Map<String, String>> list = [];

    list.add({'label': 'المساحه', 'feature': '250'});
    if (propertytemMode.propertyId != '4') {
      list.add({'label': 'الطابق', 'feature': "2"});
      list.add({'label': 'الغرف', 'feature': '4'});
      list.add({'label': 'الحمامات', 'feature': '2'});
    }
    if (propertytemMode.propertyId == '4') {
      list.add({'label': 'النوع', 'feature': 'زراعة'});
      list.add({'label': 'الشكل', 'feature': 'مربعه'});
      list.add({'label': 'الواجهه', 'feature': 'شارع واحد'});
    }

    return list;
  }
}
