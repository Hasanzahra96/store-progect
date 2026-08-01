import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/route_manager.dart';
import 'package:store/binding/drawer_binding.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/screens/main_screens/drawer_screens/my_account_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/share_app_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/confirm_payment_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/continue_payment_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/digital_payment_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/payment_verification_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/subscribe_detailes_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/subscribe_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/susicribe_screen/subscrip_activation_card_screen.dart';
import 'package:store/view/screens/main_screens/drawer_screens/terms_and_conditions_screen.dart';

List<GetPage<dynamic>> drawerRoutes = [
  GetPage(
    name: AppRouts.myAccountScreen,
    page: () => const MyAccountScreen(),
    binding: MyAccountBinding(),
  ),
  GetPage(
    name: AppRouts.shareAppScreen,
    page: () => const ShareAppScreen(),
  ),
  GetPage(
    name: AppRouts.termsandConditionsScreen,
    page: () => const TermsAndConditionsScreen(),
  ),
  GetPage(
    name: AppRouts.subscribeScreen,
    page: () => const SubscribeScreen(),
    binding: SubscribeBinding(),
  ),
  GetPage(
    name: AppRouts.digitalPaymentScreen,
    page: () => const DigitalPaymentScreen(),
    binding: DigitalPaymentBinding(),
  ),
  GetPage(
    name: AppRouts.subscribeDetailesScreen,
    page: () => const SubscribeDetailesScreen(),
    binding: SubscribeDetailesBinding(),
  ),
  GetPage(
    name: AppRouts.continuePaymentScreen,
    page: () => const ContinuePaymentScreen(),
    binding: ContinuePaymentBinding(),
  ),
  GetPage(
    name: AppRouts.confirmPaymentScreen,
    page: () => const ConfirmPaymentScreen(),
    binding: ConfirmPaymentBinding(),
  ),
  GetPage(
    name: AppRouts.subscripActivationCardScreen,
    page: () => const SubscripActivationCardScreen(),
    binding: SubscripActivationCardPinding(),
  ),
  GetPage(
    name: AppRouts.paymentVerificationScreen,
    page: () => const PaymentVerificationScreen(),
    binding: PaymentVerificationPinding(),
  )
];
