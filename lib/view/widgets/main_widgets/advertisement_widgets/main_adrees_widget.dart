import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class MainAdreesWidget extends StatelessWidget {
  final String? data;
  final double top;
  final double bottom;
  final double? fontsize;
  final Color? color;
  const MainAdreesWidget({
    super.key,
    this.data,
    this.top = 24,
    this.bottom = 12,
    this.fontsize,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom, top: top),
      child: CustomText(
        align: AlignmentDirectional.centerStart,
        data: data!,
        fontsize: fontsize ?? 18.sp,
        color: color ?? AppColor.browneColor,
        fontweight: FontWeight.bold,
      ),
    );
  }
}
