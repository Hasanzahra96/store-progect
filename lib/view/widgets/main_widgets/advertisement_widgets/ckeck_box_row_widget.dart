import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CkeckBoxRowWidget extends StatelessWidget {
  final Widget ckeckBox;
  final String title;

  const CkeckBoxRowWidget({
    super.key,
    required this.ckeckBox,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ckeckBox,
        CustomText(
          data: title,
          color: AppColor.buttonColor,
          fontsize: 14.sp,
        ),
      ],
    );
  }
}
