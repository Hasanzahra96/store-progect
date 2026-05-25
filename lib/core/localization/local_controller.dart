import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/services/service.dart';

class LocalController extends GetxController {
  String? language;
  MyService myService = Get.find();
  bool isArabic = false;
  bool isEnglish = false;
  void changeLang(String langcode) {
    Locale locale = Locale(langcode);
    myService.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);

    update();
  }

  @override
  void onInit() {
    update();
    String? langsharedPref = myService.sharedPreferences.getString('lang');

    if (langsharedPref == 'ar') {
      language = 'ar';
    } else if (langsharedPref == 'en') {
      language = 'en';
    }

    super.onInit();
  }
}
