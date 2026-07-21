import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/datasource/static/prperties_lists/property_filter_lists.dart';
import 'package:store/view/widgets/custom_price_rang.dart';
import 'package:store/view/widgets/custom_range_slider.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';

class PropertyFilterBasicinfoSection
    extends GetView<PropertiesFilterController> {
  const PropertyFilterBasicinfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesFilterController>(
      id: 'BasicInfo',
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
          MainAdreesWidget(
            top: 16.h,
            data: 'عدد الغرف',
            fontsize: 14.sp,
            color: AppColor.fontColor,
          ),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: List.generate(
              roomNumFilterList.length,
              (index) {
                return ButtonWidget(
                  height: 50.h,
                  width: 50.w,
                  index: index,
                  data: roomNumFilterList[index].label,
                  selectIndex: controller.selectedRoomNumIndex,
                  onPressed: () {
                    controller.numListOnChanged('Room', index);
                  },
                );
              },
            ),
          ),
          MainAdreesWidget(
            data: 'عدد الحمامات',
            fontsize: 14.sp,
            color: AppColor.fontColor,
          ),
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: List.generate(
              bathRoomNumFilterList.length,
              (index) {
                return ButtonWidget(
                  height: 50.h,
                  width: 50.w,
                  index: index,
                  data: bathRoomNumFilterList[index].label,
                  selectIndex: controller.selectedBathRoomNumIndex,
                  onPressed: () {
                    controller.numListOnChanged('BathRoom', index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
