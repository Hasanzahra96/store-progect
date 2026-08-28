import 'package:get/get.dart';
import 'package:store/core/services/favorite_store.dart';

class FavoriteController extends GetxController {
  final FavoriteStore favoriteStore = Get.find<FavoriteStore>();
}
