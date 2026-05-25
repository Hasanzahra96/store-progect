import 'package:get/get.dart';

class OnbordingController extends GetxController {
  int current = 0;
  onPageChanged(int index) {
    current = index;
    update();
  }
}
