import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/welcome_controllers/onbording_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_image.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/scroll_vieww.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Scaffold(
      body: SafeArea(
        child: ScrollVieww(
          child: Padding(
            padding: EdgeInsets.all(
              16.r,
            ),
            child: GetBuilder<OnbordingController>(
                init: OnbordingController(),
                builder: (controller) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Icon(
                              size: 30.h,
                              isRtl
                                  ? Icons.keyboard_arrow_right
                                  : Icons.keyboard_arrow_left,
                            ),
                          ),
                          SizedBox(
                            height: 200.h,
                            width: 200.w,
                            child: PageView.builder(
                              onPageChanged: (value) {
                                controller.onPageChanged(value);
                              },
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return const CustomImage(
                                  fit: BoxFit.cover,
                                  image: AppImageAssets.youtube,
                                );
                              },
                            ),
                          ),
                          Expanded(
                              child: Icon(
                            size: 30.h,
                            isRtl
                                ? Icons.keyboard_arrow_left
                                : Icons.keyboard_arrow_right,
                          )),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Builder(builder: (context) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(3, (index) {
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: controller.current == index ? 15 : 5,
                                height: 5.h,
                                margin: EdgeInsets.all(5.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.blue),
                              );
                            })
                          ],
                        );
                      }),
                      SizedBox(height: 30.h),
                      CustomText(
                        data: 'OnBordingScreen1'.tr,
                        color: AppColor.browneColor,
                        fontsize: 18.sp,
                      ),
                      SizedBox(height: 8.h),
                      CustomTextRich(
                        data: 'OnBordingScreen2'.tr,
                        color: AppColor.buttonColor,
                        underlincolor: AppColor.buttonColor,
                        fontsize: 16.sp,
                        onTap: () {},
                      )
                    ],
                  );
                }),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            16.r,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                data: 'OnBordingScreen3'.tr,
                onPressed: () {
                  Get.toNamed(
                    AppRouts.loginScreen,
                  );
                },
              ),
              CustomButton(
                colorB: AppColor.button2Color,
                data: 'OnBordingScreen4'.tr,
                colorF: AppColor.fontColor,
                onPressed: () {
                  Get.toNamed(
                    AppRouts.singUpScreen,
                  );
                },
              ),
              CustomTextRich(
                data: 'OnBordingScreen5'.tr,
                color: AppColor.browneColor,
                fontsize: 16.sp,
                underlincolor: AppColor.browneColor,
                onTap: () {
                  Get.toNamed(
                    AppRouts.mainNavigationScreen,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
