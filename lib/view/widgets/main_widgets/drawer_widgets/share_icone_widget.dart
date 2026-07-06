import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store/core/constant/color.dart';

class ShareIconeWidget extends StatelessWidget {
  final String? image;
  final void Function()? onPress;
  const ShareIconeWidget({super.key, this.image, this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColor.tranColor,
      borderRadius: BorderRadius.circular(12.r),
      onTap: onPress,
      child: Container(
        height: 100.h,
        width: 100.w,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColor.button2Color,
        ),
        child: Container(
            padding: EdgeInsets.all(8.r),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.whiteColor,
            ),
            child: SvgPicture.asset(image!)),
      ),
    );
  }
}
