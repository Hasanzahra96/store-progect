import 'package:flutter/services.dart';
import 'package:store/core/constant/color.dart';

class MyEdge {
  static void setTransparentOverlay() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarContrastEnforced: false,
        statusBarColor: AppColor.tranColor,
        systemNavigationBarColor: AppColor.tranColor,
        systemNavigationBarDividerColor: AppColor.tranColor,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }
}
