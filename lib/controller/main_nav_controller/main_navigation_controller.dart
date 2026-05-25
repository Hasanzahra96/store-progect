import 'package:get/get.dart';

class MainNavigationcontroller extends GetxController {
  var selectedIndex = 0;

  void changeIndex(int index) {
    // switch (selectedIndex) {
    //   case 0:
    //     if (Get.isRegistered<HomeController>()) {
    //       Get.delete<HomeController>();
    //     }
    //     break;
    //   case 1:
    //     if (Get.isRegistered<FavoriteController>()) {
    //       Get.delete<FavoriteController>();
    //     }
    //     break;
    //   case 2:
    //     if (Get.isRegistered<MyAdsController>()) {
    //       Get.delete<MyAdsController>();
    //     }
    //     break;
    //   case 3:
    //     if (Get.isRegistered<MyFollowsController>()) {
    //       Get.delete<MyFollowsController>();
    //     }
    //     break;
    // }
    selectedIndex = index;
    update();
  }
}
