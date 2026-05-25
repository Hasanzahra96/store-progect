import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

Future<void> show(String title, String middleText, void Function() onTapYes,
    void Function() onTapNo) {
  return Get.defaultDialog(
    //   barrierDismissible: false, // منع الضغط خارج الدايالوج
    title: title,
    titleStyle: const TextStyle(
      color: Colors.redAccent,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    middleText: middleText,
    middleTextStyle: const TextStyle(fontSize: 12),
    titlePadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
    actions: [
      Padding(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: onTapYes,
              child: Container(
                  height: 32.h,
                  width: 90.w,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: AppColor.buttonColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                      child: CustomText(
                          data: 'تأكيد',
                          color: AppColor.whiteColor,
                          fontweight: FontWeight.bold,
                          fontsize: 12))),
            ),
            InkWell(
              onTap: onTapNo,
              child: Container(
                  height: 32.h,
                  width: 90.w,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.buttonColor),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Center(
                      child: CustomText(
                          data: 'الغاء',
                          color: AppColor.buttonColor,
                          fontweight: FontWeight.bold,
                          fontsize: 12))),
            ),
          ],
        ),
      ),
    ],
  );
}
