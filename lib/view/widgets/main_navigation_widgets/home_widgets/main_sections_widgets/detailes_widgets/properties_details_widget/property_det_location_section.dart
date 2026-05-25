import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';

class PropertyDetLocationSection extends GetView<PropertiesDetailsController> {
  const PropertyDetLocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainAdreesWidget(
          data: 'الموقع',
        ),
        CustomText(
          align: AlignmentDirectional.centerStart,
          fontsize: 16.sp,
          data:
              "${controller.propertyItemModel.location ?? ''} - ${controller.propertyItemModel.location ?? ''}",
        ),
        SizedBox(height: 24.h),
        CustomText(
          data: 'تفاصيل اخرى',
          color: AppColor.fontColor,
          fontweight: FontWeight.w600,
          fontsize: 16.sp,
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
      ],
    ); //////////// قسم الموقع
  }
}
