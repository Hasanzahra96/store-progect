import 'package:flutter/material.dart';

class AdaptevScreen extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  final Widget? smallMobile;
  const AdaptevScreen(
      {super.key, this.mobile, this.tablet, this.desktop, this.smallMobile});
///////HelperMethode

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 700;
  static bool isTablit(BuildContext context) =>
      700 < MediaQuery.of(context).size.width &&
      MediaQuery.of(context).size.width < 1300;
  static bool isDesktop(BuildContext context) =>
      1300 < MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth > 1200) {
      return desktop!;
    } else if (screenWidth > 700 && screenWidth < 1200) {
      return tablet!;
    } else if (screenWidth < 700) {
      return mobile!;
    } else
      return mobile!;
  }
}
