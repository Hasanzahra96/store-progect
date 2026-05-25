import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:store/core/localization/local_files/forgote_pass_email_transilation.dart';
import 'package:store/core/localization/local_files/home_transilation.dart';
import 'package:store/core/localization/local_files/login_transilation.dart';
import 'package:store/core/localization/local_files/new_pas_transilation.dart';
import 'package:store/core/localization/local_files/singup_transilation.dart';
import 'package:store/core/localization/local_files/verify_code_transilation.dart';
import 'package:store/core/localization/local_files/welcoms_transilation.dart';

class Transilation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          ...welcomeEn,
          ...onBordingEn,
          ...loginEn,
          ...singupEn,
          ...forgotPasswordEn,
          ...emailCheckEn,
          ...verifyCodePhoneEn,
          ...verifyCodeEmailEn,
          ...verifyCodeAccountEn,
          ...newPasswordEn,
          ...homeEn,
        },
        'ar': {
          ...welcomeAr,
          ...onBordingAr,
          ...loginAr,
          ...singupAr,
          ...forgotPasswordAr,
          ...emailCheckAr,
          ...verifyCodePhoneAr,
          ...verifyCodeEmailAr,
          ...verifyCodeAccountAr,
          ...newPasswordAr,
          ...homeAr,
        },
      };
}
