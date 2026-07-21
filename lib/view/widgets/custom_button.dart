import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final double? minWidth;
  final double? height;
  final FontWeight? fontWeight;
  final String? data;
  final double? elevation;
  final Color? colorB;
  final Color? colorF;
  final double? fontsize;
  final Function()? onPressed;
  final EdgeInsetsGeometry? padding;
  final bool isEnabel;
  final double? borderRadius;
  const CustomButton({
    super.key,
    this.height,
    this.data,
    this.colorB = AppColor.buttonColor,
    this.fontsize,
    this.minWidth,
    this.colorF = AppColor.whiteColor,
    this.onPressed,
    this.elevation,
    this.fontWeight,
    this.isEnabel = true,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: MaterialButton(
        padding: padding,
        disabledColor: AppColor.button2Color,
        disabledTextColor: AppColor.greyColor,
        height: height ?? 58.h,
        minWidth: minWidth ?? double.infinity,
        color: colorB,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
        ),
        onPressed: isEnabel ? onPressed : null,
        child: CustomText(
          fontweight: fontWeight,
          data: data!,
          fontsize: fontsize ?? 18.sp,
          color: isEnabel ? colorF : AppColor.greyColor,
        ),
      ),
    );
  }
}
