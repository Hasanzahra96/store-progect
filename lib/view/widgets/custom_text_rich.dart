import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';

class CustomTextRich extends StatelessWidget {
  final String? data;
  final String? fdata;
  final Color? color;
  final Color? underlincolor;
  final double? width;
  final double? fontsize;
  final FontWeight? fontweight;
  final String? fontfamily;
  final double? decorationThickness;
  final Function()? onTap;

  const CustomTextRich({
    super.key,
    this.data,
    this.color,
    this.fontsize,
    this.fontweight,
    this.onTap,
    this.underlincolor,
    this.fdata,
    this.fontfamily = 'Tajawal',
    this.width,
    this.decorationThickness,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
        text: fdata ?? '',
        style: TextStyle(
          fontSize: 14.sp,
          color: AppColor.fontColor,
        ),
      ),
      TextSpan(
          text: data!,
          style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: fontsize,
              fontWeight: fontweight,
              fontFamily: fontfamily,
              color: color,
              decorationColor: underlincolor ?? AppColor.browneColor,
              decoration: TextDecoration.underline,
              decorationThickness: decorationThickness),
          recognizer: TapGestureRecognizer()..onTap = onTap),
    ]));
  }
}
