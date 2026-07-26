import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/digital_payment_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/datasource/static/drawer_list/payment_list.dart';
import 'package:store/data/model/drawer_model/payment_model.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/cash_payment_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/sub_card_widget.dart';

class DigitalPaymentScreen extends GetView<DigitalPaymentController> {
  const DigitalPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الدفع الإلكتروني',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: SafeArea(
          child: Column(
            children: [
              SubCardWidget(
                price: controller.subscribe.price,
                monthNumber: controller.subscribe.monthNumber,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomText(
                align: AlignmentDirectional.centerStart,
                data: 'كود الخصم',
                fontsize: 18.sp,
                fontweight: FontWeight.bold,
                color: AppColor.browneColor,
              ),
              Form(
                key: controller.formKey,
                child: CustomTextFormField(
                  hintText: 'أدخل كود الخصم هنا ...',
                  controller: controller.discountCodeController,
                  prefixIcon: const Icon(
                    Icons.discount_outlined,
                    color: AppColor.greyColor,
                  ),
                  helper: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 16.r,
                        color: AppColor.greyColor,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Flexible(
                        child: CustomText(
                          maxLines: 2,
                          data: 'يمكنك إدخال كود الخصم هنا إذا كان لديك',
                          fontsize: 12.sp,
                          color: AppColor.greyColor,
                        ),
                      ),
                    ],
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: CustomButton(
                      borderRadius: 6.r,
                      minWidth: 90.w,
                      height: 32.h,
                      fontsize: 12.sp,
                      fontWeight: FontWeight.bold,
                      data: 'تطبيق',
                      onPressed: () {
                        controller.formKey.currentState!.validate();
                        //   controller.applyDiscountCode();
                      },
                    ),
                  ),
                  validator: controller.validateDiscountCode,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                align: AlignmentDirectional.centerStart,
                data: 'ملخص الدفع',
                fontsize: 18.sp,
                color: AppColor.browneColor,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    data: 'السعر الأصلي',
                    fontsize: 16.sp,
                    color: AppColor.buttonColor,
                  ),
                  CustomText(
                    data:
                        '${controller.subscribe.price ?? ''} ${controller.subscribe.subPrice ?? ''}',
                    fontsize: 18.sp,
                    color: AppColor.buttonColor,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    data: 'الخصم',
                    fontsize: 16.sp,
                    color: AppColor.buttonColor,
                  ),
                  CustomText(
                    data: '0 s.p',
                    fontsize: 18.sp,
                    color: AppColor.greenColor,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    data: 'المبلغ المطلوب',
                    fontsize: 16.sp,
                    color: AppColor.buttonColor,
                  ),
                  CustomText(
                    data:
                        '${controller.subscribe.price ?? ''} ${controller.subscribe.subPrice ?? ''}',
                    fontsize: 18.sp,
                    color: AppColor.buttonColor,
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                align: AlignmentDirectional.centerStart,
                data: 'اختر طريقة الدفع',
                fontsize: 18.sp,
                color: AppColor.browneColor,
              ),
              SizedBox(
                height: 16.h,
              ),
              GetBuilder<DigitalPaymentController>(
                builder: (controller) {
                  return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        paymentList.length,
                        (index) {
                          PaymentModel payment = paymentList[index];
                          return Flexible(
                            child: CashPaymentWidget(
                              index: index,
                              image: payment.image,
                              name: payment.name,
                              onPress: () {
                                return controller.selectPaymentMethod(
                                    index, payment.id);
                              },
                            ),
                          );
                        },
                      ));
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GetBuilder<DigitalPaymentController>(
        builder: (controller) {
          return SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    data: 'متابعة للدفع',
                    onPressed: () {
                      controller.onContinuePressed();
                    },
                  ),
                  controller.showPaymentError
                      ? CustomText(
                          align: AlignmentDirectional.center,
                          data:
                              'يرجى اختيار طريقة الدفع للمتابعة إلى بوابة الدفع',
                          fontsize: 12.sp,
                          color: AppColor.redColor,
                        )
                      : const SizedBox.shrink(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
