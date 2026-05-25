import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/core/localization/local_controller.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/scroll_vieww.dart';

class ChooseLanguageScreen extends GetView<LocalController> {
  const ChooseLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollVieww(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: const AssetImage(AppImageAssets.logo),
                    radius: 100.r,
                  ),
                  SizedBox(height: 24.h),
                  CustomText(
                    data: 'اختر لغتك',
                    color: AppColor.browneColor,
                    fontsize: 24.sp,
                  ),
                  SizedBox(height: 8.h),
                  CustomText(
                    data: 'Choose Your Language',
                    color: AppColor.fontColor,
                    fontsize: 22.sp,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomButton(
              data: 'العربية',
              onPressed: () {
                controller.changeLang('ar');
                Get.toNamed(
                  AppRouts.welcomeScreen,
                );
              },
            ),
            CustomButton(
              colorB: AppColor.button2Color,
              data: 'English',
              colorF: AppColor.fontColor,
              onPressed: () {
                controller.changeLang('en');
                Get.toNamed(
                  AppRouts.welcomeScreen,
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
