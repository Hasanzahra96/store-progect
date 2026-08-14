import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/confirm_payment_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/confirm_info_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/sub_card_widget.dart';

class ConfirmPaymentScreen extends GetView<ConfirmPaymentController> {
  const ConfirmPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تأكيد الدفع',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Column(
          children: [
            SubCardWidget(
              price: controller.subscribe.price,
              monthNumber: controller.subscribe.monthNumber,
            ),
            SizedBox(
              height: 32.h,
            ),
            Container(
              padding: EdgeInsets.all(8.0.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: AppColor.button2Color),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      padding: EdgeInsets.all(4.r),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColor.whiteColor),
                      child: const Icon(
                        Icons.check,
                        color: AppColor.greenColor,
                      ),
                    ),
                    title: CustomText(
                      align: AlignmentDirectional.centerStart,
                      data: controller.payment.name ?? '',
                      fontsize: 16.sp,
                      color: AppColor.buttonColor,
                      fontweight: FontWeight.bold,
                    ),
                    subtitle: CustomText(
                      align: AlignmentDirectional.centerStart,
                      data: 'دفع بسهولة و أمان',
                      fontsize: 12.sp,
                      color: AppColor.greyColor,
                      fontweight: FontWeight.bold,
                    ),
                    trailing: Image.asset(controller.payment.image!,
                        width: 80.w, height: 60.h),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: 'المبلغ الإجمالي',
                        fontsize: 16.sp,
                        color: AppColor.browneColor,
                        fontweight: FontWeight.bold,
                      ),
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data:
                            '${controller.subscribe.price ?? ''} ${controller.subscribe.subPrice ?? ''}',
                        fontsize: 18.sp,
                        color: AppColor.buttonColor,
                        fontweight: FontWeight.bold,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color: AppColor.whiteColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.verified_user_outlined,
                          color: AppColor.browneColor,
                          size: 30.r,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Flexible(
                          child: CustomText(
                            maxLines: 3,
                            align: AlignmentDirectional.centerStart,
                            data: controller.paymentId == '1'
                                ? 'سيتم تحويلك إلى بوابة الدفع التابعة ل سيريتيل كاش و اقتطاع المبلغ من حسابك لإتمام عملية الدفع بأمان'
                                : 'سيتم تحويلك إلى بوابة الدفع التابعة ل شام كاش و اقتطاع المبلغ من حسابك لإتمام عملية الدفع بأمان',
                            fontsize: 12.sp,
                            color: AppColor.buttonColor,
                            fontweight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const ConfirmInfoWidget(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomButton(
                data: 'تأكيد',
                onPressed: () {
                  Get.toNamed(AppRouts.paymentVerificationScreen);
                },
              ),
              CustomText(
                align: AlignmentDirectional.center,
                data: 'يمكنك الرجوع و تغيير طريقة الدفع',
                fontsize: 12.sp,
                color: AppColor.fontColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
