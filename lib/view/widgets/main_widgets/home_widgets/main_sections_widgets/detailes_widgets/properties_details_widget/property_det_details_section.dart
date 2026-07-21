import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/details_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/wrap_widget.dart';

class PropertyDetDetailsSection extends GetView<PropertiesDetailsController> {
  const PropertyDetDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainAdreesWidget(
          data: 'تفاصيل العقار',
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runSpacing: 16,
          spacing: 50,
          children: controller.getFilteredFeatures().map((feature) {
            return DetailsWidget(
              firstTitel: feature['label']!,
              firstSubTitel: feature['value']!,
            );
          }).toList(),
        ),
        (controller.stateId == '2' && controller.propertyId == '1')
            ? const SizedBox.shrink()
            : (controller.stateId == '2' &&
                    ['2', '3'].contains(controller.propertyId))
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      CustomText(
                        data: 'تفاصيل اضافية',
                        color: AppColor.fontColor,
                        fontweight: FontWeight.w600,
                        fontsize: 16.sp,
                      ),
                      SizedBox(height: 12.h),
                      WrapWidget(list: controller.feature)
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText(
                            data: 'التشطيبات والديكور',
                            color: AppColor.fontColor,
                            fontweight: FontWeight.w600,
                            fontsize: 16.sp,
                          ),
                          (controller.stateId == '1' &&
                                  controller.propertyId == '1')
                              ? CustomText(
                                  data: ' / جديد',
                                  color: AppColor.buttonColor,
                                  fontsize: 16.sp,
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 50,
                        runSpacing: 16, // مسافة عمودية
                        children: controller.getFilteredDecore().map((decore) {
                          return DetailsWidget(
                            firstTitel: decore['label'],
                            firstSubTitel: decore['value'],
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 24.h),
                      CustomText(
                        data: 'تفاصيل اضافية',
                        color: AppColor.fontColor,
                        fontweight: FontWeight.w600,
                        fontsize: 16.sp,
                      ),
                      SizedBox(height: 12.h),
                      WrapWidget(list: controller.feature),
                    ],
                  ),
      ],
    );
  }
}
