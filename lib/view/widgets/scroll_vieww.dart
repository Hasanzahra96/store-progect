import 'package:flutter/material.dart';

class ScrollVieww extends StatelessWidget {
  final Widget child;

  const ScrollVieww({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    // double screenHeight;

    // final double appBarHeight = Scaffold.of(context).appBarMaxHeight ??
    //     kToolbarHeight; ////// appbar ارتفاع

    // final hasAppBar = Scaffold.maybeOf(context)!.appBarMaxHeight != null;
    // screenHeight = hasAppBar
    //     ? MediaQuery.of(context).size.height - appBarHeight
    //     : MediaQuery.of(context).size.height;
    // //////
    // double effectiveHeight = screenHeight < 600 ? 640.0 : screenHeight;

    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(), child: child);
  }
}
