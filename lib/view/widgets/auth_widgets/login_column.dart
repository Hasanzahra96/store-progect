import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/login_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';

import 'package:store/view/widgets/custom_image.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/auth_widgets/custom_phone_field.dart';

class LoginColumn extends StatelessWidget {
  const LoginColumn({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImage(
          image: AppImageAssets.home2,
          fit: BoxFit.cover,
          heigh: 272.h,
          width: double.infinity,
        ),
        SizedBox(
          height: 20.h,
        ),
        Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    data: 'LoginScreen1'.tr,
                    color: AppColor.browneColor,
                    fontsize: 24.sp,
                    fontweight: FontWeight.bold,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.support_agent,
                    size: 30.r,
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomText(
                align: AlignmentDirectional.centerStart,
                data: "LoginScreen2".tr,
                color: AppColor.fontColor,
                fontsize: 16.sp,
                fontweight: FontWeight.w600,
              ),
              CustomPhoneField(
                controller: controller.phoneTextController,
                initialCountryCode: controller.initialCountryCode,
                onChanged: (value) => controller.onChanged(value),
                onCountryChanged: (value) => controller.onCountryChanged(value),
                validator: (value) => controller.validator(),
                onSaved: controller.onSaved,
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                align: AlignmentDirectional.centerStart,
                data: "LoginScreen3".tr,
                color: AppColor.fontColor,
                fontsize: 16.sp,
                fontweight: FontWeight.w600,
              ),
              GetBuilder<LoginController>(
                builder: (controller) => CustomTextFormField(
                  keyboardType: TextInputType.visiblePassword, ////////////////
                  controller: controller.passwordController,
                  obscureText: controller.isobscare,
                  validator: (value) {
                    return controller.passValidator();
                  },
                  suffixIcon: IconButton(
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
              Container(
                alignment: AlignmentDirectional.centerEnd,
                child: CustomTextRich(
                  data: 'LoginScreen4'.tr,
                  fontsize: 14.sp,
                  underlincolor: AppColor.browneColor,
                  fontweight: FontWeight.w500,
                  color: AppColor.browneColor,
                  onTap: () {
                    controller.closeKeyboard();
                    Get.toNamed(
                      AppRouts.forgotPasswordScreen,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
