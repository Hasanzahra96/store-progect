import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class WrapWidget extends StatelessWidget {
  final List? list;
  const WrapWidget({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
        spacing: 5.w,
        runSpacing: 1.h,
        children: list!
            .map((item) => Chip(
                  labelPadding: EdgeInsets.symmetric(horizontal: 20.w),
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.transparent),
                  color: const WidgetStatePropertyAll(AppColor.button2Color),
                  label: CustomText(
                    data: '$item',
                  ),
                ))
            .toList());
  }
}
