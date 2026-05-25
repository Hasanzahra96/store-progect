import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/drop_down_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/chip_feature_button_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/counter_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/decore_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/wrap_property_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/tow_column_widget.dart';

class PropertyDetailSection extends GetView<PropertiesAdvertisementController> {
  const PropertyDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesAdvertisementController>(
      id: 'detail',
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            controller.selectedState == 2
                ? const MainAdreesWidget(
                    data: 'تفاصيل العقار عند التسليم',
                  )
                : const MainAdreesWidget(
                    data: 'تفاصيل العقار',
                  ),
            TowColumnWidget(
              firstData: 'الطابق',
              secondData: 'اتجاه العقار',
              firstWidget: DropDownWidget(
                data: 'اختر',
                items: allRegons,
              ),
              secondWidget: DropDownWidget(data: 'اختر', items: allRegons),
            ),
            (controller.propertyId == '1') ///////////////////////// اذا كنت شقه
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(height: 16.h),
                        TowColumnWidget(
                          firstData: 'دوبليكس',
                          firstWidget: DropDownWidget(
                            data: 'اختر',
                            items: allRegons,
                          ),
                        )
                      ])
                : const SizedBox.shrink(),
            [
              '1',
              '3'
            ].contains(controller.propertyId) ////////////////// شقه او مكتب
                ? Column(
                    key: const ValueKey(1),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24.h),
                      CustomText(
                        data: 'الغرف و الحمامات و البلاكين',
                        fontsize: 16.sp,
                        fontweight: FontWeight.bold,
                      ),
                      SizedBox(height: 8.h),
                      CounterWidget(
                        data: 'عدد الغرف',
                        onIncrement: () {
                          controller.incrementDetailChanged(1);
                        },
                        onDecrement: () {
                          controller.decrementDetailChanged(1);
                        },
                        count: controller.roomCount,
                      ),
                      SizedBox(height: 8.h),
                      CounterWidget(
                        data: 'عدد الحمامات',
                        onIncrement: () {
                          controller.incrementDetailChanged(2);
                        },
                        onDecrement: () {
                          controller.decrementDetailChanged(2);
                        },
                        count: controller.bathRoomCount,
                      ),
                      SizedBox(height: 8.h),
                      CounterWidget(
                        data: 'عدد البلاكين',
                        onIncrement: () {
                          controller.incrementDetailChanged(3);
                        },
                        onDecrement: () {
                          controller.decrementDetailChanged(3);
                        },
                        count: controller.terraceCount,
                      ),
                    ],
                  )
                : const SizedBox.shrink(
                    key: ValueKey(2),
                  ),
            SizedBox(height: 24.h),
            (controller.selectedState == 1 &&
                    ['1'].contains(controller.propertyId)) ////// شقه و عظم فقط
                ? const SizedBox.shrink(
                    key: ValueKey(22),
                  )
                : (controller.selectedState == 1 &&
                        ['2', '3'].contains(controller
                            .propertyId)) ///////////////غرفه او مكتب وعظم فقط
                    ? Column(
                        key: const ValueKey(111),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            data: 'تفاصيل إضافية (تمديدات فقط)',
                            fontsize: 16.sp,
                            fontweight: FontWeight.bold,
                          ),
                          SizedBox(height: 8.h),
                          WrapPropertyWidget(
                              list: morePropertyAdsFeaturesList2,
                              itemBuilder: (context, index) {
                                final moreyAdsPropertyFeatures =
                                    morePropertyAdsFeaturesList2[index];
                                return ChipFeatureButtonWidget(
                                  data: moreyAdsPropertyFeatures.label,
                                  isSelected:
                                      moreyAdsPropertyFeatures.isSelected,
                                  onPressed: () {
                                    controller.moreFeatureListOnChanged(
                                        moreyAdsPropertyFeatures,
                                        moreyAdsPropertyFeatures.isSelected);
                                  },
                                );
                              }),
                        ],
                      )
                    : const DecoreWidget(
                        ////////////////الفرش
                        key: ValueKey(222),
                      ),
          ],
        );
      },
    );
  }
}
