import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:store/binding/auth_binding.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/screens/auth_screens/email_check_screen.dart';
import 'package:store/view/screens/auth_screens/forgot_password_screen.dart';
import 'package:store/view/screens/auth_screens/login_screen.dart';
import 'package:store/view/screens/auth_screens/new_password_screen.dart';
import 'package:store/view/screens/auth_screens/singup_screen.dart';
import 'package:store/view/screens/auth_screens/verify_account_screen.dart';
import 'package:store/view/screens/auth_screens/verify_code_email_screen.dart';
import 'package:store/view/screens/auth_screens/verify_code_phone_screen.dart';

List<GetPage<dynamic>> authRoutes = [
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
];
