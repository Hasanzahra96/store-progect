import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:store/data/datasource/static/prperties_lists/property_item_list.dart';
import 'package:store/data/model/properties_model/property_item_model.dart';

class PropertiesDetailsController extends GetxController {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int activeIndex = 0;
  late PropertyItemModel propertyItemModel;
  late final String id;
  late final String propertyId;
  late final String lowStateId;
  late final String stateId;
  late final String payTypeId;
  late final List<PropertyItemModel> property;
  void onPageChanged(int index) {
    activeIndex = index;
    update();
  }

  void onThumbnailTap(int index) {
    carouselController.animateToPage(index);
    activeIndex = index;
    update();
  }

  List feature = ['تلبيس حجرة', 'تراس', 'حديقة', 'كراج', 'كاميرات مراقبة'];
  /////////////////////////
  List<Map<String, String>> getFilteredFeatures() {
    List<Map<String, String>> list = [];

    list.add({'label': 'الطابق', 'value': '1'});
    list.add({'label': 'الاتجاه', 'value': 'غربي'});
    list.add({'label': 'المساحة', 'value': '100m'});

    if (stateId != '2') {
      list.add({'label': 'الفرش', 'value': 'مفروش'});
    }
    if (propertyId != '2') {
      list.add({'label': 'الغرف', 'value': '3'});
      list.add({'label': 'الحمامات', 'value': '2'});
      list.add({'label': 'البلاكين', 'value': '4'});
    }
    print('النوع: ${propertyId}');

    return list;
  }

  /////////////////////////
  List<Map<String, String>> getFilteredDecore() {
    List<Map<String, String>> list = [];

    list.add({'label': 'المطبخ', 'value': 'راكب'});
    list.add({'label': 'الاناره', 'value': 'مخفيه'});
    list.add({'label': 'الارضيات', 'value': 'بورسلان'});
    list.add({'label': 'الاسقف', 'value': 'جبسم بورد'});

    return list;
  }

///////////////////////////////
  List<Map<String, String>> getFilteredLand() {
    List<Map<String, String>> list = [];

    list.add({'label': 'نوع الارض', 'value': 'أرض سكنية'});
    list.add({'label': 'شكل الأرض', 'value': 'مستطيلة'});
    list.add({'label': 'واجهة الأرض', 'value': 'على شارع واحد'});
    list.add({'label': 'المساحة', 'value': '300  م2'});

    return list;
  }

  List landFeature = [
    'كهرباء',
    'مياه',
    'صرف صحي',
    'طريق',
  ];

////////////////////////////////
  intialData() {
    id = Get.arguments['id'];
    propertyId = Get.arguments['propertyId'];
    propertyItemModel =
        propertyItemList.singleWhere((element) => element.id == id);
    stateId = Get.arguments['stateId'];
    payTypeId = Get.arguments['payTypeId'];
    lowStateId = Get.arguments['lowStateId'];

    property = propertyItemList
        .where((element) => element.propertyId == propertyId)
        .toList();
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
