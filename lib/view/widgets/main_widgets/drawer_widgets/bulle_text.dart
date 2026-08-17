import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class BulletText extends StatelessWidget {
  final String? text;
  const BulletText({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            data: '•  ',
            fontsize: 14.sp,
          ),
          Expanded(
              child: CustomText(
            data: text!,
            fontsize: 16.sp,
            color: AppColor.fontColor,
            maxLines: 10,
          )),
        ],
      ),
    );
  }
}
