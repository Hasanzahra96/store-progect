import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/confirm_payment_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/continue_payment_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/digital_payment_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/language_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/my_account_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/payment_failed_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/payment_success_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/payment_verification_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/points_of_sale_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/subscribe_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/subscribe_detailes_controller.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/subscrip_activation_card_controller.dart';

/////////////////////========drawerBinding========/////////////////////////////
class MyAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAccountController>(
      () => MyAccountController(),
    );
    Get.lazyPut<AddPhotoController>(
      () => AddPhotoController(),
      tag: 'myaccount',
    );
  }
}

class PointsOfSaleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PointsOfSaleController>(
      () => PointsOfSaleController(),
    );
  }
}

class LanguageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguageController());
  }
}

///////////=============
class SubscribeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscribeController>(
      () => SubscribeController(),
    );
  }
}

class SubscribeDetailesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscribeDetailesController>(
      () => SubscribeDetailesController(),
    );
  }
}

class DigitalPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DigitalPaymentController>(
      () => DigitalPaymentController(),
    );
  }
}

class ContinuePaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContinuePaymentController>(
      () => ContinuePaymentController(),
    );
  }
}

class ConfirmPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConfirmPaymentController>(
      () => ConfirmPaymentController(),
    );
  }
}

class SubscripActivationCardPinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubscripActivationCardController>(
      () => SubscripActivationCardController(),
    );
  }
}

class PaymentVerificationPinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentVerificationController>(
      () => PaymentVerificationController(),
    );
  }
}

class PaymentSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentSuccessController>(
      () => PaymentSuccessController(),
    );
  }
}

class PaymentFailedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentFailedController>(
      () => PaymentFailedController(),
    );
  }
}
