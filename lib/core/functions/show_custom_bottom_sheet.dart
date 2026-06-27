import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<T?> showCustomBottomSheet<T>({
  required String title,
  String? subtitle,
  Widget? icon,
  required List<Widget> actions,
  bool isDismissible = true,
  bool enableDrag = true,
}) {
  return Get.bottomSheet<T>(
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      child: SafeArea(
        top: false,
        child: Wrap(
          children: [
            Center(
              child: Container(
                width: 45.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(50.r),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            if (icon != null) ...[
              Center(child: icon),
              SizedBox(height: 12.h),
            ],
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            if (subtitle != null) ...[
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey.shade600,
                    height: 1.4,
                  ),
                ),
              ),
            ],
            SizedBox(height: 18.h),
            ...actions,
          ],
        ),
      ),
    ),
    backgroundColor: Colors.transparent,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
    ),
  );
}
