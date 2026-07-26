import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store/binding/home_binding.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/screens/main_screens/advertiser_account_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/home_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/details_screens/propertes_details_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/details_screens/vechicles_details_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/properties_filter_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/result_filter_screen/properties_filter_result_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/result_filter_screen/vechicles_filter_result_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/vechicles_filter_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/properties_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/vechicles_screen.dart';

List<GetPage<dynamic>> homeRoutes = [
  GetPage(
    name: AppRouts.homeScreen,
    page: () => const Homescreen(),
  ),
  GetPage(
      name: AppRouts.vechiclesScreen,
      page: () => const VechiclesScreen(),
      binding: VechiclesBinding()),
  GetPage(
      name: AppRouts.propertiesScreen,
      page: () => const PropertiesScreen(),
      binding: PropertiesBinding()),

  /////////////=====================detailes root================================
  GetPage(
    name: AppRouts.vechiclesDetailsScreen,
    page: () => const VechiclesDetailsScreen(),
    binding: VechiclesDetailsBinding(),
  ),

  GetPage(
    name: AppRouts.propertiesDetailsScreen,
    page: () => const PropertesDetailsScreen(),
    binding: PropertiesDetailsBinding(),
  ),

  /////////////=====================filters root================================
  GetPage(
    name: AppRouts.vechiclesFilterScreen,
    page: () => const VechiclesFilterScreen(),
    binding: VechicleFilterBinding(),
  ),
  GetPage(
    name: AppRouts.vechiclesFilterResultScreen,
    page: () => const VechiclesFilterResultScreen(),
    binding: VechicleFilterResultBinding(),
  ),
  GetPage(
    name: AppRouts.propertiesFilterScreen,
    page: () => const PropertiesFilterScreen(),
    binding: PropertiesFilterBinding(),
  ),
  GetPage(
    name: AppRouts.propertiesFilterResultScreen,
    page: () => const PropertiesFilterResultScreen(),
    binding: PropertiesFilterResultBinding(),
  ),

  ///////////advertiserAccount
  GetPage(
    name: AppRouts.advertiserAccountScreen,
    page: () => const AdvertiserAccountScreen(),
    binding: AdvertiserBinding(),
  ),
];
