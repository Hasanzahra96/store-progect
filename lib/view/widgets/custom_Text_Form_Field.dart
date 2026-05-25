import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store/core/constant/color.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextAlign? textAlign;
  final String? suffixText;
  final TextInputType? keyboardType;
  final TextDirection? textDirection;
  final Color? fillColor;
  final bool isborderSide;
  final BorderSide? borderSide;
  final int? maxLines;
  final Color? bordercolor;
  final void Function()? onPress;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.hintText,
    this.keyboardType,
    this.suffixText,
    this.textAlign,
    this.textDirection,
    this.fillColor = AppColor.button2Color,
    this.bordercolor,
    this.borderSide,
    this.isborderSide = true,
    this.maxLines = 1,
    this.suffixIcon,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    // final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: TextFormField(
        onTap: onPress,
        maxLines: maxLines,
        textAlignVertical: TextAlignVertical.center,
        //   textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
        //   textAlign: isRtl ? TextAlign.right : TextAlign.left,
        controller: controller,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            suffixText: suffixText,
            suffixStyle: TextStyle(
              fontSize: 14.sp,
            ),
            fillColor: isborderSide ? fillColor : null,
            filled: isborderSide ? true : false,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: isborderSide
                  ? BorderSide.none
                  : BorderSide(
                      color: bordercolor ?? AppColor.greyColor.withOpacity(0.3),
                    ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(
                color: bordercolor ?? Colors.black26,
              ),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide.none),
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 14.sp, color: AppColor.greyColor),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon),
      ),
    );
  }
}
