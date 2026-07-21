import 'package:get/get.dart';
import 'package:store/core/constant/routess.dart';

class SubscribeController extends GetxController {
  goTosubscribeDetailesScreen(subscribe) {
    Get.toNamed(AppRouts.subscribeDetailesScreen, arguments: {
      'id': subscribe.id,
    });
    update();
  }
}
