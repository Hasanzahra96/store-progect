import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/prperties_lists/property_filter_lists.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/ckeck_box_row_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';

class PropertyFilterStateSection extends GetView<PropertiesFilterController> {
  const PropertyFilterStateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesFilterController>(
      id: 'State',
      builder: (controller) => Column(
        children: [
          MainAdreesWidget(
            data: 'الحالة',
            fontsize: 16.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              stateFilterPropertyList.length,
              (index) {
                return ButtonWidget(
                  index: index,
                  data: stateFilterPropertyList[index].label,
                  selectIndex: controller.selectedStateIndex,
                  onPressed: () {
                    controller.stateListOnChanged('State', index);
                  },
                );
              },
            ),
          ),
          CustomAnmSwit(
            child: [0, 2].contains(controller.selectedStateIndex)
                ? Column(
                    children: [
                      MainAdreesWidget(
                        data: 'الفرش',
                        fontsize: 14.sp,
                        color: AppColor.fontColor,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          furnishFilterPropertyList.length,
                          (index) {
                            return ButtonWidget(
                              width: context.screenWidth / 2.3,
                              index: index,
                              data: furnishFilterPropertyList[index].label,
                              selectIndex: controller.selectedFurnishIndex,
                              onPressed: () {
                                controller.stateListOnChanged('Furnish', index);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
          MainAdreesWidget(
            data: 'اتجاه العقار',
            fontsize: 16.sp,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              diractionFilterPropertyList.length,
              (index) {
                return ButtonWidget(
                  width: context.screenWidth / 4.8,
                  index: index,
                  data: diractionFilterPropertyList[index].label,
                  selectIndex: controller.selectedDirectionIndex,
                  onPressed: () {
                    controller.stateListOnChanged('Direction', index);
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
            children: propertyFilterFeaturesList
                .map((feature) => SizedBox(
                      width: context.screenWidth / 2.3,
                      child: CkeckBoxRowWidget(
                        ckeckBox: CustomCheckBox(
                            value: feature.isSelected,
                            onChanged: (value) {
                              controller.featurcheckBoxChanged(feature, value!);
                            }),
                        title: feature.label,
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
