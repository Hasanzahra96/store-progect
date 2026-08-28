import 'package:get/get.dart';

class FavoriteStore extends GetxService {
  final RxList<String> favoriteVehicleIds = <String>[].obs;
  final RxList<String> favoritePropertyIds = <String>[].obs;

  bool isVehicleFavorite(String id) {
    return favoriteVehicleIds.contains(id);
  }

  void toggleVehicleFavorite(String id) {
    if (favoriteVehicleIds.contains(id)) {
      favoriteVehicleIds.remove(id);
    } else {
      favoriteVehicleIds.add(id);
    }
  }

  bool isPropertyFavorite(String id) {
    return favoritePropertyIds.contains(id);
  }

  void togglePropertyFavorite(String id) {
    if (favoritePropertyIds.contains(id)) {
      favoritePropertyIds.remove(id);
    } else {
      favoritePropertyIds.add(id);
    }
  }
}
