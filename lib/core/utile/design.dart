import 'package:flutter/material.dart';

class Design {
  late Size designSize;
  void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    if (mediaQuery.size.width > 600) {
      // شاشة كبيرة (تابلت)
      designSize = Size(300, 280);
    } else {
      // شاشة صغيرة (موبايل)
      designSize = Size(390, 845);
    }
  }
}
