import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscrip_activation_card_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';

class SubscripActivationCardScreen
    extends GetView<SubscripActivationCardController> {
  const SubscripActivationCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'بطاقة تفعيل اشتراك',
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
                        data: 'بطاقة تفعيل اشتراك',
                        fontsize: 16.sp,
                        color: AppColor.buttonColor),
                    Image.asset(AppImageAssets.youtube,
                        width: 80.w, height: 60.h),
                  ],
                )),
            SizedBox(
              height: 16.h,
            ),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'معلومات البطاقة',
              fontsize: 18.sp,
              color: AppColor.browneColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'كود التفعيل',
              fontsize: 14.sp,
              color: AppColor.greyColor,
              fontweight: FontWeight.bold,
            ),
            CustomTextFormField(
              keyboardType: TextInputType.number, ////////////////
              controller: controller.activationCodeController,

              validator: (value) {
                return controller.validateActivationCodeCode(value);
              },
            ),
            SizedBox(
              height: 50.h,
            ),
            Column(
              children: [
                CustomButton(
                  data: 'تفعيل',
                  onPressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      data: 'لا أملك بطاقة ؟',
                      color: AppColor.fontColor,
                      fontsize: 14.sp,
                      fontweight: FontWeight.bold,
                    ),
                    CustomTextRich(
                        data: ' عرض نقاط البيع',
                        color: AppColor.browneColor,
                        fontsize: 14.sp,
                        fontweight: FontWeight.w500,
                        underlincolor: AppColor.browneColor,
                        onTap: () {}),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
