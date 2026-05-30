import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class DetailsWidget extends StatelessWidget {
  final String? firstTitel;
  final String? firstSubTitel;
  const DetailsWidget({super.key, this.firstTitel, this.firstSubTitel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //  width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            data: firstTitel ?? '',
            fontsize: 12.sp,
            color: AppColor.greyColor,
          ),
          SizedBox(height: 8.h),
          CustomText(
            data: firstSubTitel ?? '',
            fontsize: 14.sp,
            color: AppColor.buttonColor,
          ),
        ],
      ),
    );
  }
}
