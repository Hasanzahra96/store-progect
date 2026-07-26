import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store/binding/advertisment_binding.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/advertisement_screens.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/aprove_posting_screen.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/properties_advertisemen_screen.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/vechicles_advertisement_screen.dart';

List<GetPage<dynamic>> advertismentRoutes = [
  GetPage(
    name: AppRouts.advertisementScreen,
    page: () => const AdvertisementScreen(),
  ),
  GetPage(
    name: AppRouts.vechiclesAdvertisementScreen,
    page: () => const VechiclesAdvertisementScreen(),
    binding: VechiclesAdvertisementBinding(),
  ),
  GetPage(
    name: AppRouts.propertiesAdvertisementScreen,
    page: () => const PropertiesAdvertisementScreen(),
    binding: PropertiesAdvertisementBinding(),
  ),
  GetPage(
    name: AppRouts.aprovePostingScreen,
    page: () => const AprovePostingScreen(),
  ),
];
