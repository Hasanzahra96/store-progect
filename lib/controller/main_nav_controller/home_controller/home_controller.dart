import 'package:get/get.dart';

class HomeController extends GetxController {
  var isLoading = false;
  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  Future<void> loadData() async {
    isLoading = true;
    update();
    // تحميل البيانات هنا
    await Future.delayed(Duration(seconds: 2));
    isLoading = false;
    update();
  }
}
