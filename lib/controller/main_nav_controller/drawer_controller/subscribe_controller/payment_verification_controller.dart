import 'package:get/get.dart';
import 'package:step_progress/step_progress.dart';
import 'package:store/core/constant/routess.dart';

class PaymentVerificationController extends GetxController {
  final stepProgressController = StepProgressController(totalSteps: 5);

  void go() {
    Get.toNamed(AppRouts.paymentSuccessScreen);
  }

  @override
  void onReady() {
    go();
    super.onReady();
  }
}
