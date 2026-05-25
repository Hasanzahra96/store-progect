import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/wrap_widget.dart';

class CarDetDescriptionSection extends GetView<VechiclesDetailsController> {
  const CarDetDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          data: 'الوصف',
          fontsize: 16.sp,
          fontweight: FontWeight.bold,
          color: AppColor.fontColor,
        ),
        SizedBox(height: 12.h),
        CustomTextRich(
          fdata:
              'الوصف و المميزات الإضافية هنا الوصف و المميزات الإضافية هنا الوصف و المميزات الإضافية...',
          data: 'قراءه المزيد',
          color: Colors.blue,
          fontweight: FontWeight.bold,
          underlincolor: Colors.blue,
          fontsize: 14.sp,
          onTap: () {},
        ),
        GetBuilder<VechiclesDetailsController>(
          builder: (controller) {
            return CustomAnmSwit(
              child: controller.stateId == '2'
                  ? Column(
                      key: const ValueKey(1),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MainAdreesWidget(data: 'تفاصيل الحوادث'),
                        WrapWidget(
                          list: controller.accedant,
                        ),
                        SizedBox(height: 24.h),
                        CustomText(
                          data: 'تفاصيل الاضرار',
                          fontsize: 16,
                          color: AppColor.fontColor,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        CustomTextRich(
                          fdata:
                              'تفاصيل الأضرار هنا تفاصيل الأضرار هنا تفاصيل الأضرار هنا تفاصيل الأضرار هناتفاصيل الأضرار هنا تفاصيل الأضرار هنا تفاصيل الأضرارهنا تفاصيل الأضرار  فاصيل الأضرار هنا...',
                          data: 'قراءه المزيد',
                          color: Colors.blue,
                          fontweight: FontWeight.bold,
                          underlincolor: Colors.blue,
                          fontsize: 14.sp,
                          onTap: () {},
                        ),
                      ],
                    )
                  : const SizedBox.shrink(
                      key: ValueKey(2),
                    ),
            );
          },
        ),
      ],
    );
  }
}
