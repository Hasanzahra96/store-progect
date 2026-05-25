import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:store/data/datasource/static/vechicles_lists/vechical_item_list.dart';
import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';

class VechiclesDetailsController extends GetxController {
  final CarouselSliderController carouselController =
      CarouselSliderController();
  int activeIndex = 0;
  late VechicleItemModel vechicleItemModel;
  late final String id;
  late final String brandId;
  late final String stateId;
  late final String payTypeId;
  late final List<VechicleItemModel> vechical;

  void onPageChanged(int index) {
    activeIndex = index;
    update();
  }

  void onThumbnailTap(int index) {
    carouselController.animateToPage(index);
    activeIndex = index;
    update();
  }

  List feature = ['زجاج كهربائي', 'مكيف', 'وسائد هوائية', 'فتحة سقف', 'حساسات'];
  List accedant = [
    'عطل في المكيف',
    'ضربه خارجيه',
    'ضربه خارجيه',
    'ضربه خارجيه',
  ];

  intialData() {
    // vechicleItemModel = Get.arguments['vechicleItemModel'];

    id = Get.arguments['id'];
    brandId = Get.arguments['brandId'];
    vechicleItemModel =
        vehiclesItemList.singleWhere((element) => element.id == id);
    stateId = Get.arguments['stateId'];
    payTypeId = Get.arguments['payTypeId'];
    vechical = vehiclesItemList
        .where((element) => element.brandId == brandId)
        .toList();
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
