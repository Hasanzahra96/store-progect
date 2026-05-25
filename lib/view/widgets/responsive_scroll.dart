import 'package:flutter/material.dart';

class ResponsiveScrollView extends StatelessWidget {
  final Widget child;
  final double scrollThreshold;

  const ResponsiveScrollView({
    super.key,
    required this.child,
    this.scrollThreshold = 600,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double effectiveHeight =
        screenHeight < scrollThreshold ? 640.0 : screenHeight;

    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(height: effectiveHeight, child: child));
  }
}
