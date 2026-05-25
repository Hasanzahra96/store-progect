import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/new_password_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/scroll_vieww.dart';

class NewPasswordScreen extends GetView<NewPasswordController> {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'NewPasswordScreen1'.tr,
          isBack: false,
        ),
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
                  AspectRatio(
                    aspectRatio: 6 / 3,
                    child: Image(
                      image: AssetImage(AppImageAssets.forgotPassword),
                    ),
                  ),
                  SizedBox(
                    height: 80.h,
                  ),
                  CustomText(
                    data: 'NewPasswordScreen2'.tr,
                    fontsize: 16.sp,
                    color: AppColor.browneColor,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomText(
                    data: "NewPasswordScreen3".tr,
                    fontsize: 14.sp,
                    fontweight: FontWeight.w600,
                    align: AlignmentDirectional.centerStart,
                  ),
                  GetBuilder<NewPasswordController>(
                    builder: (controller) => CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      controller: controller.passwordController,
                      obscureText: controller.isobscare,
                      validator: (value) {
                        return controller.passValidator();
                      },
                      prefixIcon: IconButton(
                        icon: Icon(
                          controller.isobscare
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          controller.change();
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomText(
                    data: "NewPasswordScreen4".tr,
                    fontsize: 14.sp,
                    fontweight: FontWeight.w600,
                    align: AlignmentDirectional.centerStart,
                  ),
                  GetBuilder<NewPasswordController>(
                    builder: (controller) => CustomTextFormField(
                      keyboardType:
                          TextInputType.visiblePassword, ////////////////
                      controller: controller.confirmPasswordController,
                      obscureText: controller.isobsCareconfirm,
                      validator: (value) {
                        return controller.passValidatorConfirm();
                      },

                      prefixIcon: IconButton(
                        icon: Icon(
                          controller.isobsCareconfirm
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          controller.changeConfirm();
                        },
                      ),
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
                  data: 'NewPasswordScreen5'.tr,
                  colorB: AppColor.buttonColor,
                  onPressed: () {
                    if (controller.formKey1.currentState!.validate()) {
                      Get.offNamed(
                        AppRouts.loginScreen,
                      );
                    }
                  },
                ),
              ),
            ),
          );
        }));
  }
}
