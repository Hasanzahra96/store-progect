import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/continue_payment_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/auth_widgets/custom_otp_text_field.dart';
import 'package:store/view/widgets/auth_widgets/custom_phone_field.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';

class ContinuePaymentScreen extends GetView<ContinuePaymentController> {
  const ContinuePaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الدفع الإلكتروني',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'طريقة الدفع',
              fontsize: 18.sp,
              color: AppColor.browneColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
                height: 70.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.button2Color),
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                        data: controller.payment.name ?? '',
                        fontsize: 16.sp,
                        color: AppColor.buttonColor),
                    Image.asset(controller.payment.image!,
                        width: 80.w, height: 60.h),
                  ],
                )),
            SizedBox(
              height: 16.h,
            ),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'معلومات الحساب',
              fontsize: 18.sp,
              color: AppColor.browneColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 16.h,
            ),
            (controller.payment.id == '1')
                ? Column(
                    children: [
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: 'رقم الموبايل المسجل في سيريتيل كاش',
                        fontsize: 14.sp,
                        color: AppColor.greyColor,
                        fontweight: FontWeight.bold,
                      ),
                      CustomPhoneField(),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: 'الرمز السري لحساب سيريتيل كاش',
                        fontsize: 14.sp,
                        color: AppColor.greyColor,
                        fontweight: FontWeight.bold,
                      ),
                      CustomTextFormField(),
                    ],
                  )
                : Column(
                    children: [
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: 'رقم الحساب',
                        fontsize: 14.sp,
                        color: AppColor.greyColor,
                        fontweight: FontWeight.bold,
                      ),
                      CustomTextFormField(),
                      SizedBox(
                        height: 16.h,
                      ),
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: 'الرمز السري لحساب شام كاش',
                        fontsize: 14.sp,
                        color: AppColor.greyColor,
                        fontweight: FontWeight.bold,
                      ),
                      CustomTextFormField(),
                    ],
                  ),
            SizedBox(
              height: 50.h,
            ),
            CustomButton(
              data: 'تأكيد الدفع',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
