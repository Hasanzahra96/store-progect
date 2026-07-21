import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/add_photo_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';

class DottedBorderWidget extends StatelessWidget {
  const DottedBorderWidget({
    super.key,
    required this.controller,
  });

  final AddPhotoController controller;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.black26,
      strokeWidth: 1,
      dashPattern: const [5, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      stackFit: StackFit.loose,
      child: SizedBox(
        width: double.infinity,
        height: 250.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // SvgPicture.asset(AppImageAssets.cameraAdd),

            Icon(
              Icons.add_a_photo_outlined,
              size: 60.r,
              color: AppColor.buttonColor,
            ),
            const Spacer(),
            CustomText(
              data: 'اضافه صور',
              fontsize: 16.sp,
              fontweight: FontWeight.w600,
              color: AppColor.buttonColor,
            ),
            SizedBox(height: 8.h),
            CustomText(
              data: 'يمكنك إضافة ما يصل إلى 10 صور',
              fontsize: 14.sp,
              color: AppColor.greyColor,
            ),
            const Spacer(),

            CustomButton(
              data: 'اختر من الجهاز',
              colorB: AppColor.button2Color,
              elevation: 0,
              fontsize: 14.sp,
              colorF: AppColor.buttonColor,
              height: 38.h,
              minWidth: 128.w,
              onPressed: () {
                controller.pickImagesFromGallery();
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
