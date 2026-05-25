import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_price_rang.dart';
import 'package:store/view/widgets/custom_range_slider.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/large_drop_down_filter_widget.dart';

class LandFilterBasicinfoSection extends GetView<PropertiesFilterController> {
  const LandFilterBasicinfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesFilterController>(
      id: 'BasicInfoland',
      builder: (controller) => Column(
        children: [
          MainAdreesWidget(
            top: 16.sp,
            data: 'نوع الأرض',
            fontsize: 16.sp,
          ),
          const LargeDropDownFilterWidget(
            data: 'اختر نوع الأرض',
            items: [],
            icon: Icons.directions_car_filled_outlined,
          ),
          SizedBox(
            height: 8.h,
          ),
          MainAdreesWidget(
            top: 16.sp,
            data: 'شكل الأرض',
            fontsize: 16.sp,
          ),
          const LargeDropDownFilterWidget(
            data: 'اختر شكل الأرض',
            items: [],
            icon: Icons.directions_car_filled_outlined,
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          MainAdreesWidget(
            top: 16.sp,
            data: 'واجهه الأرض',
            fontsize: 16.sp,
          ),
          const LargeDropDownFilterWidget(
            data: 'اختر واجهه الأرض',
            items: [],
            icon: Icons.directions_car_filled_outlined,
          ),
          SizedBox(
            height: 8.h,
          ),
          MainAdreesWidget(
            data: 'المساحه ( متر مربع )',
            fontsize: 14.sp,
            color: AppColor.fontColor,
          ),
          CustomPriceRange(
              startValue: controller.startValue, endValue: controller.endValue),
          CustomRangeSlider(
            startValue: controller.startValue,
            endValue: controller.endValue,
            onChanged: (RangeValues values) {
              controller.onRangeChanged(values);
            },
          ),
        ],
      ),
    );
  }
}
