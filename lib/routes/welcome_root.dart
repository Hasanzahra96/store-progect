import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/screens/welcome_screens/choose_language_screen.dart';
import 'package:store/view/screens/welcome_screens/onbording_screen.dart';
import 'package:store/view/screens/welcome_screens/welcome_screen.dart';

List<GetPage<dynamic>> welcomeRoutes = [
  GetPage(
    name: AppRouts.onbordingScreen,
    page: () => const OnBordingScreen(),
  ),
  GetPage(
      name: AppRouts.chooseLanguageScreen,
      page: () => const ChooseLanguageScreen()),
  GetPage(
    name: AppRouts.welcomeScreen,
    page: () => const WelcomeScreen(),
  ),
];
