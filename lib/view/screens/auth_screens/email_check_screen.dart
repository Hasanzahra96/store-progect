import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/email_check_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/scroll_vieww.dart';

class EmailCheckScreen extends GetView<EmailCheckController> {
  const EmailCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: 'EmailCheckScreen1'.tr),
        body: ScrollVieww(
          child: Form(
            key: controller.formKey1,
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
                      image: AssetImage(AppImageAssets.forgotPassword),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomText(
                    textAlign: TextAlign.center,
                    data: "EmailCheckScreen2".tr,
                    fontsize: 16.sp,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFormField(
                    controller: controller.emailController,
                    keyboardType: TextInputType.name,
                    hintText: " Email@gmail.com ",
                    validator: (value) {
                      return controller.emailValidator();
                    },
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child: CustomTextRich(
                      data: "EmailCheckScreen3".tr,
                      color: AppColor.browneColor,
                      fontsize: 14.sp,
                      fontweight: FontWeight.w500,
                      underlincolor: AppColor.browneColor,
                      onTap: () {
                        Get.offNamed(
                          AppRouts.forgotPasswordScreen,
                        );
                      },
                    ),
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
                  data: 'EmailCheckScreen4'.tr,
                  colorB: AppColor.buttonColor,
                  onPressed: () {
                    if (controller.formKey1.currentState!.validate()) {
                      Get.offNamed(AppRouts.verifyCodeEmailScreen);
                    }
                  },
                ),
              ),
            ),
          );
        }));
  }
}
