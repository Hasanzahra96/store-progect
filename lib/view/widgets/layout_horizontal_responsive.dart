import 'package:flutter/material.dart';

class LayoutHorizontalResponsive extends StatelessWidget {
  final Widget? child;
  const LayoutHorizontalResponsive({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
              // هنا نجبر محتوى الصف على أن لا يقل عرضه عن عرض الشاشة الحالي
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
              ),
              child: child));
    });
  }
}
