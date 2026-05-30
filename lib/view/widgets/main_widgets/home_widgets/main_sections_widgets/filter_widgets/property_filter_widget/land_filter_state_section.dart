import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_filter_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/prperties_lists/property_filter_lists.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';

import '../../../../advertisement_widgets/ckeck_box_row_widget.dart';

class LandFilterStateSection extends GetView<PropertiesFilterController> {
  const LandFilterStateSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesFilterController>(
      id: 'LandState',
      builder: (controller) =>
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        MainAdreesWidget(
          data: 'الحالة',
          fontsize: 16.sp,
          color: AppColor.browneColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            landStateFilterPropertyList.length,
            (index) {
              return ButtonWidget(
                width: context.screenWidth / 2.3,
                index: index,
                data: landStateFilterPropertyList[index].label,
                selectIndex: controller.selectedLandStateIndex,
                onPressed: () {
                  controller.stateListOnChanged('LandState', index);
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
          children: landFilterFeatureList
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
      ]),
    );
  }
}
