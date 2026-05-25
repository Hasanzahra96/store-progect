import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_filter_controller.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/data/datasource/static/vechicles_lists/car_filter_lists.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/custom_price_rang.dart';
import 'package:store/view/widgets/custom_range_slider.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ckeck_box_row_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/from_to_range_filter_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/large_drop_down_filter_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/small_drop_down_filter_widget.dart';

class VechiclesFilterScreen extends GetView<VechiclesFilterController> {
  const VechiclesFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'الفلاتر',
        isBack: true,
        isShape: true,
        actions: [
          IconButton(
            onPressed: () => controller.showDialoge(),
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: SafeArea(
        child: GetBuilder<VechiclesFilterController>(
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
                            taypAdsCarList.length,
                            (index) {
                              return ButtonWidget(
                                index: index,
                                data: paytaypCarFilterList[index].label,
                                selectIndex: controller.selectedpayTaypIndex,
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
                            startValue: controller.startValue,
                            endValue: controller.endValue),
                        CustomRangeSlider(
                          startValue: controller.startValue,
                          endValue: controller.endValue,
                          onChanged: (RangeValues values) {
                            controller.onRangeChanged(values);
                          },
                        ),
                        MainAdreesWidget(
                          top: 16.sp,
                          data: 'النوع و الموديل',
                          fontsize: 16.sp,
                        ),
                        const LargeDropDownFilterWidget(
                          data: 'اختر النوع',
                          items: [],
                          icon: Icons.directions_car_filled_outlined,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        const LargeDropDownFilterWidget(
                          data: 'اختر الموديل',
                          items: [],
                          icon: Icons.mode_edit_outline_outlined,
                        ),
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
                        MainAdreesWidget(
                          data: 'سنة الصنع',
                          fontsize: 16.sp,
                        ),
                        const FromToRangeFilterWidget(
                          firstWidget: SmallDropDownFilterWidget(
                            data: 'اختر',
                            items: [],
                          ),
                          secondWidget: SmallDropDownFilterWidget(
                            data: 'اختر',
                            items: [],
                          ),
                        ),
                        MainAdreesWidget(
                          data: 'سعة المحرك',
                          fontsize: 16.sp,
                        ),
                        const FromToRangeFilterWidget(
                          firstWidget: SmallDropDownFilterWidget(
                            data: 'اختر',
                            items: [],
                          ),
                          secondWidget: SmallDropDownFilterWidget(
                            data: 'اختر',
                            items: [],
                          ),
                        ),
                        MainAdreesWidget(
                          data: 'نوع الجير',
                          fontsize: 16.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            geerTypeFilterCarList.length,
                            (index) {
                              return ButtonWidget(
                                width: context.screenWidth / 2.3,
                                index: index,
                                data: geerTypeFilterCarList[index].label,
                                selectIndex: controller.selectedGeerTaypIndex,
                                onPressed: () {
                                  controller.taypListOnChanged('Geer', index);
                                },
                              );
                            },
                          ),
                        ),
                        MainAdreesWidget(
                          data: 'نوع الوقود',
                          fontsize: 16.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            feuleTypeFilterCarList.length,
                            (index) {
                              return ButtonWidget(
                                index: index,
                                data: feuleTypeFilterCarList[index].label,
                                selectIndex: controller.selectedFeuleTaypIndex,
                                onPressed: () {
                                  controller.taypListOnChanged('Feule', index);
                                },
                              );
                            },
                          ),
                        ),
                        MainAdreesWidget(
                          data: 'الحالة',
                          fontsize: 16.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                            stateFilterCarList.length,
                            (index) {
                              return ButtonWidget(
                                width: context.screenWidth / 2.3,
                                index: index,
                                data: stateFilterCarList[index].label,
                                selectIndex: controller.selectedStateIndex,
                                onPressed: () {
                                  controller.taypListOnChanged('State', index);
                                },
                              );
                            },
                          ),
                        ),
                        MainAdreesWidget(
                          data: 'المميزات',
                          fontsize: 16.sp,
                        ),
                        Wrap(
                          runSpacing: 8.h,
                          children: carFilterFeatureList
                              .map((feature) => SizedBox(
                                    width: context.screenWidth / 2.3,
                                    child: CkeckBoxRowWidget(
                                      ckeckBox: CustomCheckBox(
                                          value: feature.isSelected,
                                          onChanged: (value) {
                                            controller.featurcheckBoxChanged(
                                                feature, value!);
                                          }),
                                      title: feature.name,
                                    ),
                                  ))
                              .toList(),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomButton(
                          onPressed: () {
                            Get.toNamed(AppRouts.vechiclesFilterResultScreen);
                          },
                          data: 'عرض النتائج (120 إعلان)',
                        )
                      ]))),
        ),
      ),
    );
  }
}
