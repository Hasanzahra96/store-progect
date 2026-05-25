import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/responsive_scroll.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveScrollView(
        child: Stack(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Expanded(
                child: Image(
                  image: AssetImage(AppImageAssets.home1),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  8.r,
                ),
                child: Column(
                  children: [
                    CustomText(
                      textAlign: TextAlign.center,
                      data: 'WelcomeScreen1'.tr,
                      color: AppColor.browneColor,
                      fontsize: 22.sp,
                    ),
                    CustomText(
                      textAlign: TextAlign.center,
                      data: "WelcomeScreen2".tr,
                      color: AppColor.fontColor,
                      fontsize: 16.sp,
                      align: Alignment.center,
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: Image(
                  image: AssetImage(AppImageAssets.car1),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.all(
                16.r,
              ),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        CustomText(
                          data: 'WelcomeScreen3'.tr,
                          color: AppColor.buttonColor,
                          fontsize: 32.sp,
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: CustomButton(
            data: 'WelcomeScreen4'.tr,
            onPressed: () {
              Get.offNamed(
                AppRouts.onbordingScreen,
              );
            },
          ),
        ),
      ),
    );
  }
}
