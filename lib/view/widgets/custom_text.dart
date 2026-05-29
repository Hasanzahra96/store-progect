import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';

class CustomText extends StatelessWidget {
  final String data;
  final int? maxLines;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontweight;
  final String? fontfamily;
  final AlignmentGeometry? align;
  final TextAlign? textAlign;

  const CustomText(
      {super.key,
      required this.data,
      this.margin,
      this.maxLines,
      this.color = AppColor.fontColor,
      this.fontsize,
      this.fontweight,
      this.align,
      this.fontfamily = 'Tajawal',
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      alignment: align,
      child: Text(data,
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: color,
              fontSize: fontsize ?? 14.sp,
              fontWeight: fontweight,
              fontFamily: fontfamily)),
    );
  }
}
