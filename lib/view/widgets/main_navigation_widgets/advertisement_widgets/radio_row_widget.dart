import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class RadioRowWidget extends StatelessWidget {
  final Widget radio;
  final String title;
  const RadioRowWidget({
    super.key,
    required this.radio,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        radio,
        CustomText(data: title, fontsize: 12.sp, color: AppColor.fontColor),
      ],
    );
  }
}
