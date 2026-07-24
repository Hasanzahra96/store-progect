import 'package:get/get.dart';
import 'package:store/controller/auth_controller/email_check_controller.dart';
import 'package:store/controller/auth_controller/forgot_password_controller.dart';
import 'package:store/controller/auth_controller/login_controller.dart';
import 'package:store/controller/auth_controller/new_password_controller.dart';
import 'package:store/controller/auth_controller/singup_controller.dart';
import 'package:store/controller/auth_controller/verfy_code_email_controller.dart';
import 'package:store/controller/auth_controller/verfy_code_phone_controller.dart';
import 'package:store/controller/auth_controller/verify_account_controller.dart';

//////////////=====================AuthBinding=====================/////
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => LoginController(),
    );
  }
}

////////////////
class SingupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SingupController(),
    );
    Get.lazyPut(
      () => VerifyAccountController(),
    );
  }
}

////////////////
class ForgetPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ForgotPasswordController(),
    );
    Get.lazyPut(
      () => VerifyCodePhoneController(),
    );
  }
}

////////////////
class EmailCheckBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => EmailCheckController(),
    );
    Get.lazyPut(
      () => VerifyCodeEmailController(),
    );
  }
}

////////////////
class NewPassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => NewPasswordController(),
    );
  }
}
