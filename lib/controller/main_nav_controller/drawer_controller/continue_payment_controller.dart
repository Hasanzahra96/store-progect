import 'package:get/get.dart';
import 'package:store/data/datasource/static/drawer_list/payment_list.dart';
import 'package:store/data/model/drawer_model/payment_model.dart';

class ContinuePaymentController extends GetxController {
  late final PaymentModel payment;
  late final String? paymentId;

  intialData() {
    paymentId = Get.arguments['id'];
    payment = paymentList.singleWhere((element) => element.id == paymentId);
    update();
  }

  @override
  void onInit() {
    intialData();
    // discountCodeController = TextEditingController();
    super.onInit();
  }
}
