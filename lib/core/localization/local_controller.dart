import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/core/services/service.dart';

class LocalController extends GetxController {
  String? language;
  late final MyService myService;
  bool isArabic = false;
  bool isEnglish = false;

  void changeLang(String langcode) {
    _setSelectedLanguage(langcode);

    Locale locale = Locale(langcode);
    myService.sharedPreferences.setString('lang', langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    myService = Get.find<MyService>();
    super.onInit();
    _setSelectedLanguage(myService.sharedPreferences.getString('lang'));
  }

  void _setSelectedLanguage(String? langcode) {
    language = langcode ?? 'ar';
    isArabic = langcode == 'ar';
    isEnglish = langcode == 'en';
    update();
  }
}
