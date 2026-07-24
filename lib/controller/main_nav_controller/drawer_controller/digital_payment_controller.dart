import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/core/functions/valid_input.dart';
import 'package:store/data/datasource/static/drawer_list/subscribe_list.dart';
import 'package:store/data/model/drawer_model/payment_model.dart';
import 'package:store/data/model/drawer_model/subscribe_model.dart';

class DigitalPaymentController extends GetxController {
  PaymentModel payment = PaymentModel();
  late TextEditingController discountCodeController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  RxBool isPaymentSuccess = false.obs;
  RxBool isPaymentFailed = false.obs;

  Future<void> makePayment() async {
    try {
      isLoading.value = true;
      // Simulate payment processing delay
      await Future.delayed(Duration(seconds: 2));
      // Simulate payment success
      isPaymentSuccess.value = true;
    } catch (e) {
      isPaymentFailed.value = true;
    } finally {
      isLoading.value = false;
    }
  }

  ///
  late final SubscribeModel subscribe;
  late final String subscribeId;

  intialData() {
    subscribeId = Get.arguments['id'];
    subscribe =
        subscribeList.singleWhere((element) => element.id == subscribeId);
    update();
  }
  //

  ///
  int selectedIndex = -1;
  String? paymentId;
  void selectPaymentMethod(int index, id) {
    selectedIndex = index;
    paymentId = id;
    selectPayment = true;
    showPaymentError = false;
    update();
  }

/////////////
  bool selectPayment = false;
  bool showPaymentError = false;

  void onContinuePressed() {
    if (!selectPayment) {
      showPaymentError = true;
    } else {
      showPaymentError = false;

      Get.toNamed(AppRouts.continuePaymentScreen, arguments: {
        'id': paymentId,
      });
      update();

      // تابع الدفع
    }
    update();
  }

  /////////
  String? validateDiscountCode(val) {
    return validInput(val, 0, 4, 'discount');
  }

  @override
  void onInit() {
    intialData();
    discountCodeController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    discountCodeController.dispose();
    super.dispose();
  }
}
