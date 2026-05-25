import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/verfy_code_email_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/auth_widgets/custom_otp_text_field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/scroll_vieww.dart';

class VerifyCodeEmailScreen extends StatelessWidget {
  VerifyCodeEmailScreen({super.key});
  final VerifyCodeEmailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'VerifyCodeEmailScreen1'.tr,
        isBack: false,
      ),
      body: ScrollVieww(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const AspectRatio(
                aspectRatio: 6 / 3,
                child: Image(
                  image: AssetImage(AppImageAssets.verifyAccount),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),
              CustomText(
                textAlign: TextAlign.center,
                data: "VerifyCodeEmailScreen2".tr,
                fontsize: 16.sp,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomOtpTextField(
                onSubmit: (verificationCode) {
                  Get.offNamed(AppRouts.newPasswordScreen);
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      data: "VerifyCodeEmailScreen3".tr,
                      color: AppColor.fontColor,
                      fontsize: 14.sp,
                    ),
                    CustomTextRich(
                      data: "VerifyCodeEmailScreen4".tr,
                      color: AppColor.browneColor,
                      fontsize: 14.sp,
                      fontweight: FontWeight.w500,
                      underlincolor: AppColor.browneColor,
                      onTap: () {
                        //  Get.off(
                        //    () => ResetPasswordByEmailScreen(),
                        // );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
