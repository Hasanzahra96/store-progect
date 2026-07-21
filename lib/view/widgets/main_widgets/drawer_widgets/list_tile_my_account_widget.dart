import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class ListTileMyAccountWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final Widget? subtitle;
  final Widget? trailing;
  final Color? color;

  final void Function()? onTap;
  const ListTileMyAccountWidget({
    super.key,
    this.title,
    this.subTitle,
    this.trailing,
    this.onTap,
    this.color,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: color ?? AppColor.button2Color),
        child: ListTile(
          trailing: trailing,
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.h),
            child: CustomText(
              data: title ?? '',
              fontsize: 14.sp,
              color: AppColor.fontColor,
            ),
          ),
          subtitle: subtitle ??
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0.h),
                child: CustomText(
                  data: subTitle ?? '',
                  fontsize: 20.sp,
                  color: AppColor.buttonColor,
                ),
              ),
          onTap: onTap,
        ),
      ),
    );
  }
}
