import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class RadioRowWidget extends StatelessWidget {
  final Widget radio;
  final String title;
  final double? fontsize;
  final Color? color;

  const RadioRowWidget({
    super.key,
    required this.radio,
    required this.title,
    this.fontsize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        radio,
        CustomText(
            data: title,
            fontsize: fontsize ?? 12.sp,
            color: color ?? AppColor.fontColor),
      ],
    );
  }
}
