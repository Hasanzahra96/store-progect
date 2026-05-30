import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/main_navigation_controller.dart';

import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';

class AprovePostingScreen extends StatelessWidget {
  const AprovePostingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تأكيد النشر',
        isShape: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 212, 233, 253),
                  radius: 50.r,
                  child: CircleAvatar(
                      radius: 35.r,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.check,
                        color: AppColor.whiteColor,
                        size: 35.sp,
                      )),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomText(
                  data: 'الإعلان قيد المراجعة',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                  fontweight: FontWeight.bold,
                ),
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  data:
                      'تم استلام إعلانك وسيتم مراجعته قبل نشره\n سيصلك إشعار عند الموافقة عليه',
                  fontsize: 14.sp,
                  textAlign: TextAlign.center,
                  color: AppColor.greyColor,
                  fontweight: FontWeight.bold,
                ),
                SizedBox(
                  height: 100.h,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: AppColor.button2Color,
                      borderRadius: BorderRadius.circular(12.r),
                      boxShadow: [
                        BoxShadow(
                          color: AppColor.greyColor.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: const Offset(-1, -1),
                        ),
                      ],
                    ),
                    height: 100.h,
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.all(8.r),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6.r),
                          child: AspectRatio(
                            aspectRatio: 1 / 1,
                            child: Image.asset(
                              AppImageAssets.rectangle2,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                align: AlignmentDirectional.centerStart,
                                data: 'اعلان جديد',
                                fontsize: 14.sp,
                                color: AppColor.buttonColor,
                              ),
                              CustomText(
                                data: 'غرفه-للايجار',
                                fontsize: 16.sp,
                                color: AppColor.fontColor,
                              ),
                              const Spacer(),
                              CustomText(
                                data: 'تم التاكيد',
                                fontsize: 14.sp,
                                color: AppColor.greyColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomButton(
              data: 'الذهاب إلى قائمة إعلاناتي',
              onPressed: () {
                Get.offNamed(AppRouts.myAdsScreen);
                Get.find<MainNavigationcontroller>().changeIndex(1);
              },
            ),
            CustomButton(
              colorB: AppColor.button2Color,
              data: 'العودة إلى الصفحة الرئيسية',
              colorF: AppColor.fontColor,
              onPressed: () {
                Get.find<MainNavigationcontroller>().changeIndex(0);
                Get.offNamed(AppRouts.mainNavigationScreen);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
