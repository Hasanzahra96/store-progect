import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/forgot_password_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/auth_widgets/custom_phone_field.dart';
import 'package:store/view/widgets/scroll_vieww.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'ForgotPasswordScreen1'.tr),
        body: ScrollVieww(
          child: Form(
            key: controller.formKey1,
            child: Padding(
              padding: EdgeInsets.all(
                16.r,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  const AspectRatio(
                    aspectRatio: 6 / 3,
                    child: Image(
                      image: AssetImage(AppImageAssets.forgotPassword),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomText(
                    textAlign: TextAlign.center,
                    align: Alignment.center,
                    data: 'ForgotPasswordScreen2'.tr,
                    fontsize: 16.sp,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomPhoneField(
                    controller: controller.phoneTextController,
                    initialCountryCode: controller.initialCountryCode,
                    onChanged: (value) => controller.onChanged(value),
                    onCountryChanged: (value) =>
                        controller.onCountryChanged(value),
                    validator: (value) => controller.validator(),
                    onSaved: controller.onSaved,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        data: "ForgotPasswordScreen3".tr,
                        color: AppColor.fontColor,
                        fontsize: 14.sp,
                      ),
                      CustomTextRich(
                        data: "ForgotPasswordScreen4".tr,
                        color: AppColor.browneColor,
                        fontsize: 14.sp,
                        fontweight: FontWeight.w500,
                        underlincolor: AppColor.browneColor,
                        onTap: () {
                          Get.offNamed(AppRouts.emailCheckScreen);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Builder(builder: (context) {
          final kayboardOpen = MediaQuery.of(context).viewInsets.bottom;
          return SafeArea(
            child: AnimatedPadding(
              duration: Duration(milliseconds: 100),
              curve: Curves.easeInOut,
              padding: EdgeInsets.only(bottom: kayboardOpen),
              child: Padding(
                padding: EdgeInsets.all(
                  16.r,
                ),
                child: CustomButton(
                  data: 'ForgotPasswordScreen5'.tr,
                  colorB: AppColor.buttonColor,
                  onPressed: () {
                    if (controller.formKey1.currentState!.validate() &&
                        controller.phoneTextController.text.isNotEmpty) {
                      Get.offNamed(AppRouts.verifyCodePhoneScreen);
                    }
                  },
                ),
              ),
            ),
          );
        }));
  }
}
