import 'package:get/get.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/data/datasource/static/drawer_list/subscribe_list.dart';
import 'package:store/data/model/drawer_model/subscribe_model.dart';

class SubscribeDetailesController extends GetxController {
  late final SubscribeModel subscribe;
  late final String? subscribeId;

  intialData() {
    subscribeId = Get.arguments['id'];
    subscribe =
        subscribeList.singleWhere((element) => element.id == subscribeId);
    update();
  }

  goToDigitalPaymentScreen() {
    Get.toNamed(AppRouts.digitalPaymentScreen, arguments: {
      'id': subscribeId,
    });
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
