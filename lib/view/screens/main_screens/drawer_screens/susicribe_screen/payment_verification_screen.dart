import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:step_progress/step_progress.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/payment_verification_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/animation_icon.dart';

class PaymentVerificationScreen extends GetView<PaymentVerificationController> {
  const PaymentVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'التحقق من عملية الدفع',
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              const AnimationIcon(),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                data: 'جاري التحقق من عملية الدفع',
                color: AppColor.buttonColor,
                fontsize: 22.sp,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                data: 'يرجى الانتظار قليلاً \nنحن نتحقق من حالة عملية الدفع',
                color: AppColor.greyColor,
                fontsize: 14.sp,
                fontweight: FontWeight.bold,
                align: AlignmentDirectional.center,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                height: 74.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: AppColor.browneColor.withOpacity(0.1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.whiteColor,
                      child: Icon(
                        Icons.verified_user_outlined,
                        color: AppColor.browneColor,
                        size: 30.r,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Flexible(
                      child: CustomText(
                        maxLines: 3,
                        align: AlignmentDirectional.centerStart,
                        data:
                            'عملية الدفع تتم عبر اتصال آمن\nنحن نضمن حماية بياناتك',
                        fontsize: 14.sp,
                        color: AppColor.buttonColor,
                        fontweight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              StepProgress(
                stepSize: 20,
                theme: const StepProgressThemeData(
                    activeForegroundColor: AppColor.browneColor),
                controller: controller.stepProgressController,
                totalSteps: 5,
                onStepChanged: (index) {
                  debugPrint('on step changed: $index');
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              CustomText(
                data: 'جار معالجة العملية ...',
                color: AppColor.greyColor,
                fontsize: 14.sp,
              ),
              SizedBox(
                height: 70.h,
              ),
              Container(
                height: 74.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.browneColor),
                    borderRadius: BorderRadius.all(Radius.circular(12.r)),
                    color: AppColor.browneColor.withOpacity(0.1)),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.whiteColor,
                      child: Center(
                        child: Icon(
                          Icons.warning_amber_outlined,
                          color: AppColor.browneColor,
                          size: 30.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Flexible(
                      child: CustomText(
                        maxLines: 3,
                        align: AlignmentDirectional.centerStart,
                        data:
                            'يرجى عدم إغلاق التطبيق أو العودة للخلف \nحتى تكتمل عملية التحقق',
                        fontsize: 12.sp,
                        color: AppColor.buttonColor,
                        fontweight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
