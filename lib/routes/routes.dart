import 'package:get/get.dart';
import 'package:store/binding/initial_binding.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/routes/advertisment_root.dart';
import 'package:store/routes/auth_root.dart';
import 'package:store/routes/drawer_root.dart';
import 'package:store/routes/home_root.dart';
import 'package:store/routes/welcome_root.dart';
import 'package:store/view/screens/main_screens/favorite_screen.dart';
import 'package:store/view/screens/main_screens/my_ads_screen.dart';
import 'package:store/view/screens/main_screens/my_follows_screen.dart';
import 'package:store/view/screens/main_navigation_screen.dart';

List<GetPage<dynamic>>? routes = [
  //====================== main navigation root ================================
  GetPage(
      name: AppRouts.mainNavigationScreen,
      page: () => MainNavigationScreen(),
      binding: InitialBinding()),
  //====================== welcome root ========================================
  ...welcomeRoutes,
  //====================== auth root ===========================================
  ...authRoutes,
  //====================== home root ===========================================
  ...homeRoutes,
  //====================== drawer root =========================================
  ...drawerRoutes,
  //=============================== advertisment root==========================
  ...advertismentRoutes,
  //////////////////////////////////////////////
  GetPage(
    name: AppRouts.favoriteScreen,
    page: () => const FavoriteScreen(),
    binding: FavoriteBinding(),
  ),
  GetPage(
    name: AppRouts.myAdsScreen,
    page: () => const MyAdsScreen(),
  ),
  GetPage(
    name: AppRouts.myFollowsScreen,
    page: () => const MyFollowsScreen(),
  ),
];
