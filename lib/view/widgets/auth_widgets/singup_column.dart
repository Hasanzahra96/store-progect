import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/singup_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/auth_widgets/custom_phone_field.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';

class SingUpColumn extends StatelessWidget {
  const SingUpColumn({
    super.key,
    required this.controller,
  });

  final SingupController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          align: AlignmentDirectional.centerStart,
          data: "SingupScreen2".tr,
          fontsize: 14.sp,
          fontweight: FontWeight.w600,
        ),
        CustomTextFormField(
          controller: controller.firstNameController,
          keyboardType: TextInputType.name,
          hintText: "SingupScreen2*".tr,
          validator: (value) {
            return controller.firtNameValidatorSingUP();
          },
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          data: "SingupScreen3".tr,
          fontsize: 14.sp,
          fontweight: FontWeight.w600,
          align: AlignmentDirectional.centerStart,
        ),
        CustomTextFormField(
          controller: controller.lastNameController,
          keyboardType: TextInputType.name,
          hintText: "SingupScreen3*".tr,
          validator: (value) {
            return controller.lastNameValidatorSingUP();
          },
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          data: "SingupScreen4".tr,
          fontsize: 14.sp,
          fontweight: FontWeight.w600,
          align: AlignmentDirectional.centerStart,
        ),
        CustomTextFormField(
          controller: controller.emailController,
          keyboardType: TextInputType.name,
          hintText: "Email@gmail.com",
          validator: (value) {
            return controller.emailValidatorSingUP();
          },
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          data: "SingupScreen5".tr,
          fontsize: 14.sp,
          fontweight: FontWeight.w600,
          align: AlignmentDirectional.centerStart,
        ),
        CustomPhoneField(
          controller: controller.phoneTextController,
          initialCountryCode: controller.initialCountryCode,
          onChanged: (value) => controller.onChangedPhoneSingUP(value),
          onCountryChanged: (value) => controller.onCountryChangedSingUP(value),
          validator: (value) => controller.validatorPhoneSingUP(),
          onSaved: controller.onSavedPhoneSingUP,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          data: "SingupScreen6".tr,
          fontsize: 14.sp,
          fontweight: FontWeight.w600,
          align: AlignmentDirectional.centerStart,
        ),
        GetBuilder<SingupController>(
          builder: (controller) => CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: controller.passwordController,
            obscureText: controller.isobscare,
            validator: (value) {
              return controller.passValidatorSingUP();
            },
            suffixIcon: IconButton(
              icon: Icon(
                controller.isobscare ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                controller.changeSingUP();
              },
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          data: "SingupScreen7".tr,
          fontsize: 14.sp,
          fontweight: FontWeight.w600,
          align: AlignmentDirectional.centerStart,
        ),
        GetBuilder<SingupController>(
          builder: (controller) => CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            controller: controller.confirmPasswordController,
            obscureText: controller.isobsCareconfirm,
            validator: (value) {
              return controller.passValidatorConfirmSingUP();
            },
            suffixIcon: IconButton(
              icon: Icon(
                controller.isobsCareconfirm
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
              onPressed: () {
                controller.changeConfirmSingUP();
              },
            ),
          ),
        ),
        Row(
          children: [
            GetBuilder<SingupController>(
              builder: (controller) => Checkbox(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.r),
                  side: BorderSide.none,
                ),
                value: controller.isCheck,
                onChanged: (value) {
                  controller.checkBoxChanged(value);
                },
              ),
            ),
            Row(
              children: [
                CustomText(
                  data: "SingupScreen8".tr,
                  color: AppColor.fontColor,
                  fontsize: 14.sp,
                ),
                CustomTextRich(
                  data: "SingupScreen9".tr,
                  color: AppColor.browneColor,
                  fontsize: 14.sp,
                  fontweight: FontWeight.w500,
                  underlincolor: AppColor.browneColor,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
