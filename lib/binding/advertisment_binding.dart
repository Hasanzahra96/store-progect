import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';

//////////////=====================advertismentBinding=====================/////
class VechiclesAdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesAdvertisementController>(
        () => VechiclesAdvertisementController(),
        fenix: true);
    Get.lazyPut<AddPhotoController>(
      () => AddPhotoController(),
      tag: 'vechicles',
    );
  }
}

/////////
class PropertiesAdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesAdvertisementController>(
        () => PropertiesAdvertisementController(),
        fenix: true);
    Get.lazyPut<AddPhotoController>(
      () => AddPhotoController(),
      tag: 'properties',
    );
  }
}
