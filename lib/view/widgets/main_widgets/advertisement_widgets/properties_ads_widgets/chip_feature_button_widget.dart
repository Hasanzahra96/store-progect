import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:store/core/constant/color.dart';

import 'package:store/view/widgets/custom_text.dart';

class ChipFeatureButtonWidget extends StatelessWidget {
  final String data;

  final bool isSelected;

  final void Function() onPressed;

  const ChipFeatureButtonWidget(
      {super.key,
      required this.data,
      required this.onPressed,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      onPressed: onPressed,
      labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
      backgroundColor:
          isSelected ? AppColor.buttonColor : AppColor.button2Color,
      label: CustomText(
        data: data,
        fontsize: 14.sp,
        color: isSelected ? AppColor.whiteColor : AppColor.fontColor,
      ),
      side: BorderSide.none,
    );
  }
}
