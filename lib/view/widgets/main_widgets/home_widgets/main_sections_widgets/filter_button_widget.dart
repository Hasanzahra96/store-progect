import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class FilterButtonWidget extends StatelessWidget {
  final String data;
  final int index;
  final int selectIndex;
  final void Function() onPressed;

  const FilterButtonWidget(
      {super.key,
      required this.data,
      required this.index,
      required this.selectIndex,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectIndex == index;
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: ActionChip(
          onPressed: onPressed,
          labelPadding: EdgeInsets.symmetric(horizontal: 15.w),
          backgroundColor:
              isSelected ? AppColor.buttonColor : AppColor.button2Color,
          label: CustomText(
            data: data,
            fontsize: 14.sp,
            color: isSelected ? AppColor.whiteColor : AppColor.fontColor,
          ),
          side: BorderSide.none,
        ));
  }
}
