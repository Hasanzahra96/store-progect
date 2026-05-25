import 'package:flutter/material.dart';

class CustomLinearGradient extends StatelessWidget {
  const CustomLinearGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: IgnorePointer(
            // لكي لا تعيق الضغط على العناصر
            child: Container(
                height: MediaQuery.of(context)
                    .viewPadding
                    .bottom, // ارتفاع منطقة التلاشي
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      //    Colors.white.withOpacity(0.3), // تبدأ بلون شفاف في الأعلى
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.9), // تنتهي بلون الخلفية
                      Colors.white
                      // لون صلب في الحافة تماماً
                    ],
                  ),
                ))));
  }
}
