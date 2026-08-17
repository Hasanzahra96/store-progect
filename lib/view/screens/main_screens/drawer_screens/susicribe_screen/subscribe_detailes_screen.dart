import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/subscribe_detailes_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/sub_card_widget.dart';

class SubscribeDetailesScreen extends GetView<SubscribeDetailesController> {
  const SubscribeDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تفاصيل الاشتراك',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SubCardWidget(
                price: controller.subscribe.price,
                monthNumber: controller.subscribe.monthNumber,
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    data: 'الباقة',
                    fontsize: 16.sp,
                    color: AppColor.browneColor,
                  ),
                  CustomText(
                    data: controller.subscribe.package ?? '',
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
                    data: 'المدة',
                    fontsize: 16.sp,
                    color: AppColor.browneColor,
                  ),
                  CustomText(
                    data: controller.subscribe.monthNumber ?? '',
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
                    data: 'السعر',
                    fontsize: 16.sp,
                    color: AppColor.browneColor,
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
                height: 32.h,
              ),
              CustomText(
                align: AlignmentDirectional.centerStart,
                data: 'طريقة الدفع ',
                fontsize: 18.sp,
                color: AppColor.browneColor,
                fontweight: FontWeight.bold,
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomButton(
                data: 'دفع الكتروني',
                onPressed: () {
                  controller.goToDigitalPaymentScreen();
                },
              ),
              CustomText(
                margin: EdgeInsets.all(8.r),
                align: AlignmentDirectional.center,
                data: 'أو',
                fontsize: 18.sp,
                color: AppColor.browneColor,
                fontweight: FontWeight.bold,
              ),
              CustomButton(
                data: 'بطاقة تفعيل اشتراك(من نقاط البيع)',
                onPressed: () {
                  Get.toNamed(AppRouts.subscribeActivationCardScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
