import 'package:flutter/material.dart';

class ScreenCnfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeigth;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeigth = mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeigth / 100;
  }
}

extension Responsive on BuildContext {
  // العرض / الارتفاع
  double get screenWidth => MediaQuery.sizeOf(this).width;
  double get screenHeight => MediaQuery.sizeOf(this).height;

  // تابلت أم هاتف؟
  bool get isTablet => screenWidth > 600;
  bool get isDesktop => screenWidth > 1200;

  // النسب
  double get w0_1 => screenWidth * 0.1;
  double get w0_2 => screenWidth * 0.2;
  double get w0_8 => screenWidth * 0.8;
  double get w0_9 => screenWidth * 0.9;

  double get h0_1 => screenHeight * 0.1;
  double get h0_5 => screenHeight * 0.5;

  Size get designSize =>
      (isTablet) ? const Size(800, 1280) : const Size(390, 844);
}
