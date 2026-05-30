import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/wrap_widget.dart';

class PropertyDetFeatureSection extends GetView<PropertiesDetailsController> {
  const PropertyDetFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainAdreesWidget(
          data: 'مواصفات البناء',
          top: 0,
        ),
        Row(
          children: [
            const Icon(Icons.apartment, color: AppColor.buttonColor),
            SizedBox(width: 8.w),
            CustomText(data: 'عدد طوابق البناء  / 5', fontsize: 16.sp),
          ],
        ),
        SizedBox(height: 8.h),
        WrapWidget(list: controller.feature),
      ],
    );
  }
}
