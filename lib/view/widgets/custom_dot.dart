import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDot extends StatelessWidget {
  final Offset? offset;
  final Color? color;
  final BoxBorder? border;
  final Duration? delay;
  final double? width;
  final double? height;
  const CustomDot(
      {super.key,
      this.offset,
      this.color,
      this.delay,
      this.border,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset!,
      child: Container(
        width: width ?? 8.w,
        height: height ?? 8.h,
        decoration:
            BoxDecoration(border: border, color: color, shape: BoxShape.circle),
      )
          .animate(onPlay: (c) => c.repeat(reverse: true))
          .moveY(
              begin: 0,
              end: -3,
              duration: 900.ms,
              delay: delay,
              curve: Curves.easeInOut)
          .fadeIn(duration: 300.ms),
    );
  }
}
