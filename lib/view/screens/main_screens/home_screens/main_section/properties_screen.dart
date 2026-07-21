import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persistent_header_adaptive/persistent_header_adaptive.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/custom_drop_down.dart';
import 'package:store/view/widgets/custom_price_rang.dart';
import 'package:store/view/widgets/custom_range_slider.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/custom_list_generate_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/properties_widget/property_brand_view.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/properties_widget/property_item_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/filter_button_widget.dart';

class PropertiesScreen extends GetView<PropertiesController> {
  const PropertiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'العقارات',
        fontSize: 20.sp,
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed(AppRouts.propertiesFilterScreen);
            },
            icon: const Icon(Icons.filter_list_outlined),
          ),
        ],
      ),
      body: GetBuilder<PropertiesController>(
        builder: (controller) {
          return CustomScrollView(
            slivers: [
              AdaptiveHeightSliverPersistentHeader(
                  needRepaint: true,
                  floating: true,
                  initialHeight: 450.h,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColor.whiteColor,
                      border: BorderDirectional(
                          bottom: BorderSide(color: Colors.black12)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PropertyBrandView(), //////// صف العقارات
                          CustomListGenerateWidget(
                            list: lowStatePropertyList,
                            itemBuilder: (context, index) {
                              return FilterButtonWidget(
                                ////////صف الازرار الثاني
                                index: index,
                                data: lowStatePropertyList[index].label,
                                selectIndex: controller.statePropertyIndex,
                                onPressed: () {
                                  controller.statePropertyOnChanged(index);
                                },
                              );
                            },
                          ),

                          CustomListGenerateWidget(
                            list: taypPropertyList,
                            itemBuilder: (context, index) {
                              return FilterButtonWidget(
                                ///////صف الازرار الثالث
                                index: index,
                                data: taypPropertyList[index].label,
                                selectIndex: controller.taypPropertyIndex,
                                onPressed: () {
                                  controller.taypPropertyOnChanged(index);
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.r),
                            child: Row(
                              children: [
                                CustomCheckBox(
                                  value: controller.isCheck,
                                  onChanged: (value) {
                                    controller.checkBoxChanged(value);
                                  },
                                ),
                                CustomText(
                                  data: 'حدد السعر يدويا',
                                  fontsize: 14.sp,
                                  color: AppColor.buttonColor,
                                ),
                              ],
                            ),
                          ),
                          CustomAnmSwit(
                            child: controller.isCheck
                                ? Column(
                                    key: const ValueKey(1),
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: CustomPriceRange(
                                            startValue: controller.startValue,
                                            endValue: controller.endValue),
                                      ),
                                      CustomRangeSlider(
                                        startValue: controller.startValue,
                                        endValue: controller.endValue,
                                        onChanged: (RangeValues values) {
                                          controller.onRangeChanged(values);
                                        },
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(
                                    key: ValueKey(2),
                                  ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: CustomDropDown(
                                height: 35.h,
                                color: AppColor.button2Color,
                                fontsize: 12.sp,
                                fontcolor: AppColor.buttonColor,
                                onChanged: (String? value) {
                                  controller.regonOnChanged(value!);
                                },
                                value: controller.selectDropDown,
                                data: 'كل المناطق',
                                items: allRegons),
                          )
                        ],
                      ),
                    ),
                  )),
              SliverPadding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.paddingOf(context).bottom),
                sliver: SliverList.builder(
                  itemCount: controller.filteredProperties.length,
                  itemBuilder: (context, index) {
                    return PropertyItemWidget(
                      key: ValueKey(controller.filteredProperties[index].id),
                      propertyItemModel: controller.filteredProperties[index],
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
