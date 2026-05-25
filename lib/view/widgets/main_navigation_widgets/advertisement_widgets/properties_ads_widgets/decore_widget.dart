import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/view/widgets/custom_radio.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ads_state_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/chip_feature_button_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/decoret_drop_down_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/wrap_property_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/radio_row_widget.dart';

class DecoreWidget extends GetView<PropertiesAdvertisementController> {
  const DecoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesAdvertisementController>(
      id: 'detail',
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              data: 'الفرش',
              fontsize: 16.sp,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RadioRowWidget(
                    radio: CustomRadio(
                      value: 1,
                      onChanged: (value) =>
                          controller.radioDetailChangeValue(value!),
                      groupValue: controller.selectedValueDetail,
                    ),
                    title: 'مفروش'),
                RadioRowWidget(
                    radio: CustomRadio(
                      value: 2,
                      onChanged: (value) =>
                          controller.radioDetailChangeValue(value!),
                      groupValue: controller.selectedValueDetail,
                    ),
                    title: 'نصف مفروش'),
                RadioRowWidget(
                    radio: CustomRadio(
                      value: 3,
                      onChanged: (value) =>
                          controller.radioDetailChangeValue(value!),
                      groupValue: controller.selectedValueDetail,
                    ),
                    title: 'غير مفروش')
              ],
            ),
            SizedBox(height: 24.h),
            CustomText(
              data: 'التشطيبات والديكور',
              fontsize: 16.sp,
              fontweight: FontWeight.bold,
            ),
            (controller.selectedState == 0 &&
                    ['1'].contains(controller
                        .propertyId)) ////////////////// اذا كانت شقه وجاهزه
                ? Column(
                    children: [
                      SizedBox(height: 8.h),
                      AdsStateWidget(
                        toggleWidth: 3,
                        isSelected: [
                          controller.decoreState == 0,
                          controller.decoreState == 1,
                          controller.decoreState == 2,
                        ],
                        onPressed: (p0) {
                          controller.onDecoreStateChanged(p0);
                        },
                        children: List.generate(decoreAdsPropertyList.length,
                            (index) {
                          return Text(decoreAdsPropertyList[index].label);
                        }),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
            SizedBox(height: 16.h),
            Column(
                children: List.generate(
              controller.propertyId == '1'
                  ? 5
                  : controller.propertyId == '2'
                      ? 3
                      : 4,
              (index) {
                final decorOption = decorOptions[index];

                return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: DecoretDropDownWidget(
                      title: decorOption.title,
                      data: 'اختر',
                      items: decorOption.items,
                      value: controller.selectedValues[decorOption.key],
                      onChanged: (val) =>
                          controller.updateValue(decorOption.key, val),
                    ));
              },
            )),
            SizedBox(height: 16.h),
            CustomText(
              data: 'تفاصيل اضافيه',
              fontsize: 16.sp,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            WrapPropertyWidget(
              list: morePropertyAdsFeaturesList,
              itemBuilder: (context, index) {
                final morePropertyAdsFeatures =
                    morePropertyAdsFeaturesList[index];
                return ChipFeatureButtonWidget(
                  data: morePropertyAdsFeatures.label,
                  isSelected: morePropertyAdsFeatures.isSelected,
                  onPressed: () {
                    controller.moreFeatureListOnChanged(morePropertyAdsFeatures,
                        morePropertyAdsFeatures.isSelected);
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
