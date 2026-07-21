import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';

class AdsStateWidget extends StatelessWidget {
  final List<bool>? isSelected;
  final List<Widget>? children;
  final double? toggleWidth;
  final Function(int)? onPressed;
  final bool isEnabled;
  const AdsStateWidget({
    this.isSelected,
    super.key,
    this.children,
    this.onPressed,
    this.toggleWidth = 2,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColor.button2Color,
      ),
      child: ToggleButtons(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        renderBorder: false,
        fillColor: AppColor.buttonColor,
        selectedColor: AppColor.whiteColor,
        color: Colors.black87,
        constraints: BoxConstraints(
            minHeight: 38.h,
            minWidth: (context.screenWidth / toggleWidth!) - 16.w),
        onPressed: isEnabled ? onPressed : null,
        isSelected: isSelected!,
        children: children!,
      ),
    );
  }
}
