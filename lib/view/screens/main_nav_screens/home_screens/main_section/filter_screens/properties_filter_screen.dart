import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/data/datasource/static/prperties_lists/property_filter_lists.dart';
import 'package:store/data/model/state_model.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_price_rang.dart';
import 'package:store/view/widgets/custom_range_slider.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/large_drop_down_filter_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/property_filter_widget/land_filter_basicinfo_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/property_filter_widget/land_filter_state_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/property_filter_widget/property_filter_basicinfo_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/property_filter_widget/property_filter_state_section.dart';

class PropertiesFilterScreen extends GetView<PropertiesFilterController> {
  const PropertiesFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'الفلاتر',
          isBack: true,
          isShape: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.close),
            )
          ],
        ),
        body: SafeArea(
          child: GetBuilder<PropertiesFilterController>(
              builder: (controller) => SingleChildScrollView(
                  child: Padding(
                      padding: EdgeInsets.all(16.r),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MainAdreesWidget(
                              top: 8.h,
                              data: 'نوع الإعلان',
                              fontsize: 16.sp,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                paytaypPropertyFilterList.length,
                                (index) {
                                  return ButtonWidget(
                                    index: index,
                                    data:
                                        paytaypPropertyFilterList[index].label,
                                    selectIndex:
                                        controller.selectedpayTaypIndex,
                                    onPressed: () {
                                      controller.paytaypListOnChanged(index);
                                    },
                                  );
                                },
                              ),
                            ),
                            MainAdreesWidget(
                              data: 'السعر ( ليرة سورية )',
                              fontsize: 16.sp,
                            ),
                            CustomPriceRange(
                                startValue: controller.startPriceValue,
                                endValue: controller.endPriceValue),
                            CustomRangeSlider(
                              startValue: controller.startPriceValue,
                              endValue: controller.endPriceValue,
                              onChanged: (RangeValues values) {
                                controller.onRangePriceChanged(values);
                              },
                            ),
                            MainAdreesWidget(
                              top: 16.h,
                              data: 'نوع العقار',
                              fontsize: 16.sp,
                            ),
                            LargeDropDownFilterWidget<StateModel>(
                              data: 'اختر نوع العقار',
                              items: myPropertyFilterTypeList,
                              icon: Icons.apartment_outlined,
                              itemBuilder: (StateModel item) => item.label,
                              value: controller.selectPropertyTypeModel,
                              onChanged: (value) {
                                if (value != null) {
                                  controller.propertyTypeOnChanged(value);
                                }
                              },
                            ),

                            AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                child: controller.propertyId != null &&
                                        ['1', '2', '3']
                                            .contains(controller.propertyId)
                                    ? const PropertyFilterBasicinfoSection()
                                    : controller.propertyId != null &&
                                            controller.propertyId == '4'
                                        ? const LandFilterBasicinfoSection()
                                        : const SizedBox
                                            .shrink()), ////////////////======
                            MainAdreesWidget(
                              data: 'الموقع',
                              fontsize: 16.sp,
                            ),
                            const LargeDropDownFilterWidget(
                              data: 'اختر المدينه',
                              items: [],
                              icon: Icons.location_on_outlined,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            const LargeDropDownFilterWidget(
                              data: 'اختر المنطقه',
                              items: [],
                              icon: Icons.location_searching_outlined,
                            ),
                            AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                child: controller.propertyId != null &&
                                        ['1', '2', '3']
                                            .contains(controller.propertyId)
                                    ? const PropertyFilterStateSection()
                                    : controller.propertyId != null &&
                                            controller.propertyId == '4'
                                        ? const LandFilterStateSection()
                                        : const SizedBox
                                            .shrink()), ////////////////======

                            SizedBox(
                              height: 40.h,
                            ),
                            CustomButton(
                              onPressed: () {
                                Get.toNamed(
                                    AppRouts.propertiesFilterResultScreen);
                              },
                              data: 'عرض النتائج (120 إعلان)',
                            )
                          ])))),
        ));
  }
}
