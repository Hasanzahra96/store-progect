import 'package:get/get.dart';
import 'package:store/core/services/favorite_store.dart';

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

  void toggleVechicleFavorite(String vehicleId) {
    favoriteStore.toggleVehicleFavorite(vehicleId);
  }

  final favoriteStore = Get.find<FavoriteStore>();
  void togglePropertyFavorite(String propertyId) {
    favoriteStore.togglePropertyFavorite(propertyId);
  }
}
