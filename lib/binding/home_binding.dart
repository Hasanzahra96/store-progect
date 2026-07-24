import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertiser_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_result_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_filter_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_filter_result_controller.dart';

////////////////=========AdvertiserBinding========///////////
class AdvertiserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdvertiserController>(
      () => AdvertiserController(),
    );
  }
}

////////////////=========homeBinding========///////////
class VechiclesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesController>(
      () => VechiclesController(),
    );
  }
}

class PropertiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesController>(
      () => PropertiesController(),
    );
  }
}

////////////////=========DetailsBinding========///////////
class VechiclesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesDetailsController>(
      () => VechiclesDetailsController(),
    );
  }
}

class PropertiesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesDetailsController>(
      () => PropertiesDetailsController(),
    );
  }
}

////////////////=========FilterBinding========///////////

class VechicleFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesFilterController>(() => VechiclesFilterController(),
        fenix: true);
  }
}

class PropertiesFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesFilterController>(() => PropertiesFilterController(),
        fenix: true);
  }
}

////////////////=========FilterResultBinding ========///////////
class VechicleFilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesFilterResultController>(
        () => VechiclesFilterResultController(),
        fenix: true);
  }
}

class PropertiesFilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesFilterResultController>(
        () => PropertiesFilterResultController(),
        fenix: true);
  }
}
