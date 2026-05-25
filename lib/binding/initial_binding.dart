import 'package:get/get.dart';
import 'package:store/controller/auth_controller/email_check_controller.dart';
import 'package:store/controller/auth_controller/forgot_password_controller.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/controller/main_nav_controller/favorite_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/home_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_result_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_filter_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_filter_result_controller.dart';
import 'package:store/controller/main_nav_controller/main_navigation_controller.dart';
import 'package:store/controller/auth_controller/login_controller.dart';
import 'package:store/controller/auth_controller/new_password_controller.dart';
import 'package:store/controller/auth_controller/singup_controller.dart';
import 'package:store/controller/auth_controller/verfy_code_email_controller.dart';
import 'package:store/controller/auth_controller/verfy_code_phone_controller.dart';
import 'package:store/controller/auth_controller/verify_account_controller.dart';
import 'package:store/controller/main_nav_controller/my_ads_controller.dart';
import 'package:store/controller/main_nav_controller/my_follows_controller.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_controller.dart';

import 'package:store/core/class/crud.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
    Get.lazyPut<MainNavigationcontroller>(() => MainNavigationcontroller(),
        fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<FavoriteController>(() => FavoriteController(), fenix: true);
    Get.lazyPut<MyFollowsController>(() => MyFollowsController(), fenix: true);
    Get.lazyPut<MyAdsController>(() => MyAdsController(), fenix: true);
    Get.lazyPut<VechiclesController>(() => VechiclesController(), fenix: true);
    Get.lazyPut<PropertiesController>(() => PropertiesController(),
        fenix: true);
  }
}

////////////////=========DetailsBinding========///////////
class VechiclesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesDetailsController>(() => VechiclesDetailsController(),
        fenix: true);
  }
}

class PropertiesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesDetailsController>(
        () => PropertiesDetailsController(),
        fenix: true);
  }
}
////////////////=========FilterBinding========///////////

class VechicleFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesFilterController>(() => VechiclesFilterController(),
        fenix: true);
  }
}

class PropertiesFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesFilterController>(() => PropertiesFilterController(),
        fenix: true);
  }
}

////////////////=========FilterResultBinding ========///////////
class VechicleFilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesFilterResultController>(
        () => VechiclesFilterResultController(),
        fenix: true);
  }
}

class PropertiesFilterResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesFilterResultController>(
        () => PropertiesFilterResultController(),
        fenix: true);
  }
}

//////////////=====================AuthBinding=====================/////
class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      LoginController(),
    );
  }
}

////////////////
class SingupBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SingupController(),
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
    Get.put(
      ForgotPasswordController(),
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
    Get.put(
      EmailCheckController(),
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
    Get.put(
      NewPasswordController(),
    );
  }
}

//////////////=====================AdsBinding=====================/////
class VechiclesAdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VechiclesAdvertisementController>(
        () => VechiclesAdvertisementController(),
        fenix: true);
    Get.lazyPut<AddPhotoController>(() => AddPhotoController(),
        tag: 'vechicles', fenix: true);
  }
}

/////////
class PropertiesAdvertisementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesAdvertisementController>(
        () => PropertiesAdvertisementController(),
        fenix: true);
    Get.lazyPut<AddPhotoController>(() => AddPhotoController(),
        tag: 'properties', fenix: true);
  }
}
/////////////////////=================/////////////////////////////