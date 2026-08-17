import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class AboutOfAppWidget extends StatelessWidget {
  final String? title;
  final Widget? widget;
  const AboutOfAppWidget({super.key, this.title, this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: AppColor.button2Color),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 32.h,
                width: 6.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.browneColor),
              ),
              SizedBox(
                width: 8.w,
              ),
              CustomText(
                data: title!,
                color: AppColor.browneColor,
                fontsize: 18.sp,
                fontweight: FontWeight.bold,
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          widget!,
        ]));
  }
}
