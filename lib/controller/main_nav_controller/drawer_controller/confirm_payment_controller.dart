import 'package:get/get.dart';
import 'package:store/data/datasource/static/drawer_list/payment_list.dart';
import 'package:store/data/datasource/static/drawer_list/subscribe_list.dart';
import 'package:store/data/model/drawer_model/payment_model.dart';
import 'package:store/data/model/drawer_model/subscribe_model.dart';

class ConfirmPaymentController extends GetxController {
  late final PaymentModel payment;
  late final String? paymentId;
  late final SubscribeModel subscribe;
  late final String? subscribeId;

  intialData() {
    paymentId = Get.arguments['id'];
    subscribeId = Get.arguments['subscribeId'];
    payment = paymentList.singleWhere((element) => element.id == paymentId);
    subscribe =
        subscribeList.singleWhere((element) => element.id == subscribeId);
    update();
  }

  @override
  void onInit() {
    intialData();
    super.onInit();
  }
}
