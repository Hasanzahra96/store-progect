import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  final String? hintText;
  final TextAlign? textAlign;
  final String? suffixText;
  final TextInputType? keyboardType;
  final TextDirection? textDirection;
  final Color? fillColor;

  final BorderSide? borderSide;

  final Color? bordercolor;

  const TextFormFieldWidget({
    super.key,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.prefixIcon,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.suffixText,
    this.textAlign,
    this.textDirection,
    this.fillColor,
    this.bordercolor,
    this.borderSide,
  });

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Directionality(
      textDirection: isRtl ? TextDirection.ltr : TextDirection.rtl,
      child: SizedBox(
        width: context.screenWidth / 2.3,
        height: 57.h,
        child: TextFormField(
          style: TextStyle(fontSize: 14.sp),
          textAlignVertical: TextAlignVertical.center,
          textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
          textAlign: isRtl ? TextAlign.right : TextAlign.left,
          controller: controller,
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 21.h, horizontal: 8.w),
              suffixText: suffixText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: borderSide ??
                    BorderSide(
                      color: bordercolor ?? AppColor.greyColor.withOpacity(0.3),
                    ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: borderSide ??
                    BorderSide(
                      color: bordercolor ?? Colors.black26,
                    ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14.sp,
                color: Colors.grey,
              ),
              prefixIcon: prefixIcon),
        ),
      ),
    );
  }
}
