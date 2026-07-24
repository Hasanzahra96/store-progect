import 'package:get/get.dart';

import 'package:store/controller/main_nav_controller/favorite_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/home_controller.dart';
import 'package:store/controller/main_nav_controller/main_navigation_controller.dart';

import 'package:store/controller/main_nav_controller/my_ads_controller.dart';
import 'package:store/controller/main_nav_controller/my_follows_controller.dart';

import 'package:store/core/class/crud.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut<MainNavigationcontroller>(() => MainNavigationcontroller(),
        fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<MyFollowsController>(() => MyFollowsController(), fenix: true);
    Get.lazyPut<MyAdsController>(() => MyAdsController(), fenix: true);
  }
}

class FavoriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavoriteController>(() => FavoriteController(), fenix: true);
  }
}
