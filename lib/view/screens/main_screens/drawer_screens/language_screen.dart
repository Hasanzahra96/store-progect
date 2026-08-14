import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/localization/local_controller.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';

class LanguageScreen extends GetView<LocalController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'اللغة',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: GetBuilder<LocalController>(builder: (controller) {
          return SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 32.h,
                ),
                CustomText(
                    data: 'اختر لغة التطبيق المفضلة',
                    fontsize: 16.sp,
                    fontweight: FontWeight.bold,
                    color: AppColor.buttonColor),
                SizedBox(
                  height: 16.h,
                ),
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.changeLang('ar');
                      },
                      child: Container(
                        height: 209.h,
                        decoration: BoxDecoration(
                          color: AppColor.white2Color,
                          borderRadius: BorderRadius.circular(12),
                          border: controller.isArabic
                              ? Border.all(
                                  color: AppColor.browneColor, width: 2)
                              : Border.all(
                                  color: AppColor.button2Color, width: 2),
                        ),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                AppImageAssets.ar,
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            CustomText(
                                data: 'العربية',
                                fontsize: 16.sp,
                                fontweight: FontWeight.bold,
                                color: AppColor.buttonColor),
                            SizedBox(
                              height: 8.h,
                            ),
                            controller.isArabic
                                ? CustomText(
                                    data: 'لغة التطبيق الحالية',
                                    fontsize: 12.sp,
                                    color: AppColor.buttonColor)
                                : CustomText(
                                    data: 'استخدم التطبيق باللغة العربية',
                                    fontsize: 12.sp,
                                    color: AppColor.buttonColor),
                          ],
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Icon(
                        Icons.check_circle_outline,
                        color: controller.isArabic
                            ? AppColor.browneColor
                            : AppColor.tranColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    InkWell(
                      onTap: () => controller.changeLang('en'),
                      child: Container(
                        height: 209.h,
                        decoration: BoxDecoration(
                          color: AppColor.white2Color,
                          borderRadius: BorderRadius.circular(12),
                          border: controller.isEnglish
                              ? Border.all(
                                  color: AppColor.browneColor, width: 2)
                              : Border.all(
                                  color: AppColor.button2Color, width: 2),
                        ),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                AppImageAssets.en,
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            CustomText(
                                data: 'English',
                                fontsize: 16.sp,
                                fontweight: FontWeight.bold,
                                color: AppColor.buttonColor),
                            controller.isEnglish
                                ? CustomText(
                                    data: 'the current application language',
                                    fontsize: 12.sp,
                                    color: AppColor.buttonColor)
                                : CustomText(
                                    data: 'Use the application in English',
                                    fontsize: 12.sp,
                                    color: AppColor.buttonColor),
                          ],
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.r),
                      child: Icon(
                        Icons.check_circle_outline,
                        color: controller.isEnglish
                            ? AppColor.browneColor
                            : AppColor.tranColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                CustomButton(
                  data: 'حفظ التغيرات',
                  onPressed: () {
                    controller.changeLang(controller.language!);
                    Get.back();
                  },
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
