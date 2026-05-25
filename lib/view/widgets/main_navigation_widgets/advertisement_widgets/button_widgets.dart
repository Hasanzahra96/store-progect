import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/view/widgets/custom_text.dart';

class ButtonWidget extends StatelessWidget {
  final String data;
  final double? height;
  final double? width;
  final int index;
  final int selectIndex;
  final bool isEnabled;
  final void Function() onPressed;

  const ButtonWidget(
      {super.key,
      required this.data,
      required this.index,
      required this.selectIndex,
      required this.onPressed,
      this.height,
      this.width,
      this.isEnabled = true});

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectIndex == index;
    return InkWell(
      onTap: isEnabled ? onPressed : null,
      child: Container(
        height: height ?? 40.h,
        width: width ?? context.screenWidth / 3.5,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isEnabled
              ? (isSelected ? AppColor.buttonColor : AppColor.button2Color)
              : AppColor.button2Color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: CustomText(
            data: data,
            fontsize: 14.sp,
            color: isEnabled
                ? isSelected
                    ? AppColor.whiteColor
                    : AppColor.fontColor
                : AppColor.greyColor),
      ),
    );
  }
}
