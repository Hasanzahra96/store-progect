import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_dot.dart';

class AnimationIcon extends StatelessWidget {
  const AnimationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  AppColor.buttonColor.withOpacity(0.3),
                  AppColor.buttonColor.withOpacity(0.2),
                  AppColor.buttonColor.withOpacity(0.01),
                ],
                center: Alignment.center,
                radius: 0.5,
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
                decoration: const BoxDecoration(
                    color: AppColor.whiteColor, shape: BoxShape.circle),
                padding: EdgeInsets.all(16.r),
                child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColor.buttonColor.withOpacity(0.8),
                          AppColor.browneColor.withOpacity(0.8),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(4.r),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: AppColor.whiteColor, shape: BoxShape.circle),
                        padding: EdgeInsets.all(16.r),
                        child: Icon(
                          Icons.content_paste_search_rounded,
                          color: AppColor.buttonColor,
                          size: 80.r,
                        ),
                      ),
                    ))),
          ),
        ),
        CustomDot(
            height: 10.h,
            width: 10.w,
            offset: const Offset(-70, -70),
            color: AppColor.buttonColor.withOpacity(0.3),
            delay: 0.ms),
        CustomDot(
            height: 12.h,
            width: 12.w,
            border: Border.all(
                color: AppColor.browneColor.withOpacity(0.3), width: 2),
            offset: const Offset(90, -20),
            delay: 450.ms),
        CustomDot(
            offset: const Offset(70, -70),
            color: AppColor.buttonColor.withOpacity(0.3),
            delay: 200.ms),
        CustomDot(
            offset: const Offset(-60, 80),
            color: AppColor.browneColor.withOpacity(0.3),
            delay: 400.ms),
        CustomDot(
            border: Border.all(
                color: AppColor.fontColor.withOpacity(0.3), width: 2),
            offset: const Offset(-90, 30),
            delay: 500.ms),
        CustomDot(
            height: 6.h,
            width: 6.w,
            offset: const Offset(70, 70),
            color: AppColor.buttonColor.withOpacity(0.3),
            delay: 600.ms),
      ],
    );
  }
}
