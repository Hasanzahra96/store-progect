import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller/show_subscribe_data_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/sub_card_widget.dart';

class ShowSubscribeDataScreen extends GetView<ShowSubscribeDataController> {
  const ShowSubscribeDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'بيانات الاشتراك',
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16.r),
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SubCardWidget(
                    price: '1000',
                    monthNumber: '12 شهر',
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColor.button2Color),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              data: 'تاريخ بداية الاشتراك',
                              fontsize: 16.sp,
                              color: AppColor.browneColor,
                            ),
                            CustomText(
                              data: '10-7-2026',
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
                              data: 'تاريخ نهاية الاشتراك',
                              fontsize: 16.sp,
                              color: AppColor.browneColor,
                            ),
                            CustomText(
                              data: '10-7-2027',
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
                              data: '1000 ل.س',
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
                          data: 'مزايا الاشتراك',
                          fontsize: 18.sp,
                          color: AppColor.browneColor,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: AppColor.greenColor,
                            ),
                            SizedBox(width: 4.w),
                            CustomText(
                              data: 'نشر الإعلانات دون قيود',
                              fontsize: 14.sp,
                              color: AppColor.buttonColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: AppColor.greenColor,
                            ),
                            SizedBox(width: 4.w),
                            CustomText(
                              data: 'التواصل المباشر مع المعلنين',
                              fontsize: 14.sp,
                              color: AppColor.buttonColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: AppColor.greenColor,
                            ),
                            SizedBox(width: 4.w),
                            CustomText(
                              data: 'استقبال المكالمات والرسائل من المهتمين',
                              fontsize: 14.sp,
                              color: AppColor.buttonColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: AppColor.greenColor,
                            ),
                            SizedBox(width: 4.w),
                            CustomText(
                              data: 'أولوية ظهور الإعلانات في نتائج البحث',
                              fontsize: 14.sp,
                              color: AppColor.buttonColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          )),
      bottomNavigationBar: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(16.r),
            child: CustomButton(
              data: 'الذهاب إلى الرئيسية',
              onPressed: () {
                Get.offNamed(AppRouts.homeScreen);
              },
            )),
      ),
    );
  }
}
