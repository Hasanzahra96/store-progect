import 'package:get/get.dart';
import 'package:store/binding/initial_binding.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/screens/auth_screens/email_check_screen.dart';
import 'package:store/view/screens/auth_screens/forgot_password_screen.dart';
import 'package:store/view/screens/auth_screens/login_screen.dart';
import 'package:store/view/screens/auth_screens/new_password_screen.dart';
import 'package:store/view/screens/auth_screens/verify_account_screen.dart';
import 'package:store/view/screens/auth_screens/verify_code_email_screen.dart';
import 'package:store/view/screens/auth_screens/verify_code_phone_screen.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/advertisement_screens.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/aprove_posting_screen.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/properties_advertisemen_screen.dart';
import 'package:store/view/screens/main_screens/advertisement_screens/vechicles_advertisement_screen.dart';
import 'package:store/view/screens/main_screens/favorite_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/details_screens/propertes_details_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/details_screens/vechicles_details_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/home_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/properties_filter_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/result_filter_screen/properties_filter_result_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/result_filter_screen/vechicles_filter_result_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/filter_screens/vechicles_filter_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/properties_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/main_section/vechicles_screen.dart';
import 'package:store/view/screens/main_screens/my_ads_screen.dart';
import 'package:store/view/screens/main_screens/my_follows_screen.dart';
import 'package:store/view/screens/main_navigation_screen.dart';
import 'package:store/view/screens/welcome_screens/choose_language_screen.dart';
import 'package:store/view/screens/welcome_screens/onbording_screen.dart';
import 'package:store/view/screens/welcome_screens/welcome_screen.dart';
import 'package:store/view/screens/auth_screens/singup_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRouts.mainNavigationScreen,
      page: () => MainNavigationScreen(),
      binding: InitialBinding()),

  //====================== welcome root ==========================================
  GetPage(
    name: AppRouts.onbordingScreen,
    page: () => const OnBordingScreen(),
  ),
  GetPage(
      name: AppRouts.chooseLanguageScreen, page: () => ChooseLanguageScreen()),
  GetPage(
    name: AppRouts.welcomeScreen,
    page: () => const WelcomeScreen(),
  ),

  //====================== auth root ==========================================
  GetPage(
      name: AppRouts.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding()),
  GetPage(
      name: AppRouts.singUpScreen,
      page: () => SingupScreen(),
      binding: SingupBinding()),
  GetPage(
      name: AppRouts.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: ForgetPassBinding()),
  GetPage(
      name: AppRouts.emailCheckScreen,
      page: () => EmailCheckScreen(),
      binding: EmailCheckBinding()),
  GetPage(
    name: AppRouts.verifyCodePhoneScreen,
    page: () => VerifyCodePhoneScreen(),
  ),
  GetPage(
    name: AppRouts.verifyCodeEmailScreen,
    page: () => VerifyCodeEmailScreen(),
  ),

  GetPage(
      name: AppRouts.newPasswordScreen,
      page: () => NewPasswordScreen(),
      binding: NewPassBinding()),
  GetPage(
    name: AppRouts.verifyAccountScreen,
    page: () => VerifyAccountScreen(),
  ),

  //====================== home root ==========================================
  GetPage(
    name: AppRouts.homeScreen,
    page: () => Homescreen(),
  ),
  GetPage(
    name: AppRouts.vechiclesScreen,
    page: () => const VechiclesScreen(),
  ),
  GetPage(
    name: AppRouts.vechiclesDetailsScreen,
    page: () => const VechiclesDetailsScreen(),
    binding: VechiclesDetailsBinding(),
  ),
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
  ////////////////
  GetPage(
    name: AppRouts.propertiesScreen,
    page: () => const PropertiesScreen(),
  ),

  GetPage(
    name: AppRouts.propertiesDetailsScreen,
    page: () => const PropertesDetailsScreen(),
    binding: PropertiesDetailsBinding(),
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
  //=============================== advertisment root=========================
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

  //////////////////////////////////////////////
  GetPage(
    name: AppRouts.favoriteScreen,
    page: () => FavoriteScreen(),
  ),
  GetPage(
    name: AppRouts.myAdsScreen,
    page: () => MyAdsScreen(),
  ),
  GetPage(
    name: AppRouts.myFollowsScreen,
    page: () => MyFollowsScreen(),
  ),
];
