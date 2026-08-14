import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:step_progress/step_progress.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/payment_verification_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:store/view/widgets/custom_dot.dart';
import 'package:store/view/widgets/custom_text.dart';

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
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [
                            AppColor.buttonColor.withOpacity(0.3),
                            AppColor.buttonColor.withOpacity(0.2),
                            AppColor.buttonColor.withOpacity(0.01),
                          ],
                          center: Alignment.center,
                          radius: 0.5,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                          decoration: const BoxDecoration(
                              color: AppColor.whiteColor,
                              shape: BoxShape.circle),
                          padding: EdgeInsets.all(16.r),
                          child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    AppColor.buttonColor.withOpacity(0.8),
                                    AppColor.browneColor.withOpacity(0.8),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                                shape: BoxShape.circle,
                              ),
                              padding:
                                  EdgeInsets.all(4.r), // سمك الإطار المتدرج
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors
                                      .white, // لون الخلفية الداخلية (أو Colors.transparent إذا كان فوق خلفية ملونة)
                                  shape: BoxShape.circle,
                                ),
                                child: Container(
                                  decoration: const BoxDecoration(
                                      color: AppColor.whiteColor,
                                      shape: BoxShape.circle),
                                  padding: EdgeInsets.all(16.r),
                                  child: Icon(
                                    Icons.content_paste_search_rounded,
                                    color: AppColor.buttonColor,
                                    size: 80.r,
                                  ),
                                ),
                              ))),
                    ),
                  ),
                  CustomDot(
                      height: 10.h,
                      width: 10.w,
                      offset: const Offset(-70, -70),
                      color: AppColor.buttonColor.withOpacity(0.3),
                      delay: 0.ms),
                  CustomDot(
                      height: 12.h,
                      width: 12.w,
                      border: Border.all(
                          color: AppColor.browneColor.withOpacity(0.3),
                          width: 2),
                      offset: const Offset(90, -20),
                      delay: 450.ms),
                  CustomDot(
                      offset: const Offset(70, -70),
                      color: AppColor.buttonColor.withOpacity(0.3),
                      delay: 200.ms),
                  CustomDot(
                      offset: const Offset(-60, 80),
                      color: AppColor.browneColor.withOpacity(0.3),
                      delay: 400.ms),
                  CustomDot(
                      border: Border.all(
                          color: AppColor.fontColor.withOpacity(0.3), width: 2),
                      offset: const Offset(-90, 30),
                      delay: 500.ms),
                  CustomDot(
                      height: 6.h,
                      width: 6.w,
                      offset: const Offset(70, 70),
                      color: AppColor.buttonColor.withOpacity(0.3),
                      delay: 600.ms),
                ],
              ),
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
