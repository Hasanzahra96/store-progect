import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ckeck_box_row_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/drop_down_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/tow_column_widget.dart';

class LandFeatureSection extends GetView<PropertiesAdvertisementController> {
  const LandFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesAdvertisementController>(
        id: 'landFeature',
        builder: (controller) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MainAdreesWidget(
                  data: 'المواصفات الأساسية',
                  bottom: 4,
                ),
                controller.selectedStateLand == 1
                    ? CustomText(
                        data: 'الأرض خارج التنظيم وقد تخضع لشروط بناء خاصة',
                        fontsize: 12.sp,
                        color: AppColor.greyColor,
                      )
                    : const SizedBox.shrink(),
                const SizedBox(
                  height: 8,
                ),
                TowColumnWidget(
                  firstData: 'نوع الأرض',
                  secondData: 'شكل الأرض',
                  firstWidget: DropDownWidget(
                    data: 'اختر',
                    items: allRegons,
                  ),
                  secondWidget: DropDownWidget(data: 'اختر', items: allRegons),
                ),
                SizedBox(height: 16.h),
                TowColumnWidget(
                  firstData: 'واجهة الأرض',
                  firstWidget: DropDownWidget(
                    data: 'اختر',
                    items: allRegons,
                  ),
                ),
                const MainAdreesWidget(
                  data: 'الخدمات المتوفرة',
                  bottom: 4,
                ),
                Wrap(
                  children: landFeatureAdsList
                      .map((feature) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: context.screenWidth / 2.3,
                              child: CkeckBoxRowWidget(
                                ckeckBox: CustomCheckBox(
                                    value: feature.isSelected,
                                    onChanged: (value) {
                                      controller.landfeaturcheckBoxChanged(
                                          feature, value!);
                                    }),
                                title: feature.label,
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ]);
        });
  }
}
