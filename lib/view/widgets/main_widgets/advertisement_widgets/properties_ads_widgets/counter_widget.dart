import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CounterWidget extends StatelessWidget {
  final String data;
  final int count;
  final void Function() onIncrement;
  final void Function() onDecrement;

  const CounterWidget(
      {super.key,
      required this.count,
      required this.onIncrement,
      required this.onDecrement,
      required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColor.button2Color,
        border: Border.all(color: AppColor.verfyColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            data: data,
            color: AppColor.buttonColor,
          ),
          Spacer(),
          CircleAvatar(
            maxRadius: 20.r,
            backgroundColor: AppColor.buttonColor,
            child: IconButton(
              color: AppColor.whiteColor,
              onPressed: onIncrement,
              icon: const Icon(Icons.add),
            ),
          ),
          SizedBox(width: 20.w),
          CustomText(
            align: Alignment.center,
            data: '$count',
            fontsize: 22.sp,
          ),
          SizedBox(width: 20.w),
          CircleAvatar(
            maxRadius: 20.r,
            backgroundColor: AppColor.whiteColor,
            child: IconButton(
              color: AppColor.buttonColor,
              onPressed: onDecrement,
              icon: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
