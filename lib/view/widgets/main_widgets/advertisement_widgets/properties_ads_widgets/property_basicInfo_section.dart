import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/data/model/state_model.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/ads_state_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/drop_down_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/properties_ads_widgets/counter_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/text_form_field_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/tow_column_widget.dart';

class PropertyBasicInfoSection
    extends GetView<PropertiesAdvertisementController> {
  const PropertyBasicInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesAdvertisementController>(
      id: 'basicInfo',
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TowColumnWidget(
              firstData: 'نوع العقار',
              secondData: 'الساحه (متر مربع)',
              firstWidget: DropDownWidget<StateModel>(
                data: 'اختر',
                items: myPropertyAdsTypeList,
                itemBuilder: (StateModel item) => item.label,
                value: controller.selectPropertyTypeModel,
                onChanged: (value) {
                  if (value != null) {
                    controller.propertyTypeOnChanged(value);
                  }
                },
              ),
              secondWidget: TextFormFieldWidget(
                controller: controller.spaceController,
                hintText: 'مثال : 120 متر مربع',
              ),
            ),
            SizedBox(height: 24.h),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'الحالة',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            controller.propertyId == '4' //////////////اذا كانت ارض
                ? AdsStateWidget(
                    isEnabled: controller.isPropertyTypeSelected,
                    isSelected: [
                      controller.selectedStateLand == 0,
                      controller.selectedStateLand == 1,
                    ],
                    onPressed: (p0) {
                      controller.onStateChanged('stateLand', p0);
                    },
                    children:
                        List.generate(landStateAdsPropertyList.length, (index) {
                      return Text(landStateAdsPropertyList[index].label);
                    }),
                  )
                : AdsStateWidget(
                    isEnabled: controller.isPropertyTypeSelected,
                    toggleWidth: 2.9,
                    isSelected: [
                      controller.selectedState == 0,
                      controller.selectedState == 1,
                      controller.selectedState == 2,
                    ],
                    onPressed: (p0) {
                      controller.onStateChanged('state', p0);
                    },
                    children:
                        List.generate(stateAdsPropertyList.length, (index) {
                      return Text(stateAdsPropertyList[index].label);
                    }),
                  ), ///////////////////////حاله الاعلان
            SizedBox(height: 24.h),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'الوضع القانوني',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            AdsStateWidget(
              isEnabled: controller.isPropertyTypeSelected,
              toggleWidth: 2.9,
              isSelected: [
                controller.lowSelectedState == 0,
                controller.lowSelectedState == 1,
                controller.lowSelectedState == 2,
              ],
              onPressed: (p0) {
                controller.onStateChanged('lowstate', p0);
              },
              children: List.generate(lowStateAdsPropertyList.length, (index) {
                return Text(lowStateAdsPropertyList[index].label);
              }),
            ), /////
            SizedBox(height: 24.h),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'نوع الإعلان',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),

            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                taypAdsPropertyList.length,
                (index) {
                  return ButtonWidget(
                    isEnabled: controller.isPropertyTypeSelected,
                    index: index,
                    data: taypAdsPropertyList[index].label,
                    selectIndex: controller.selectedTaypIndex,
                    onPressed: () {
                      controller.onStateChanged('tayp', index);
                    },
                  );
                },
              ),
            ),

            SizedBox(height: 8.h),
            CustomAnmSwit(
                child: controller.selectedTaypIndex == 1
                    ? Row(
                        key: const ValueKey(1),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          alltaypAdsPropertyList.length,
                          (index) {
                            return ButtonWidget(
                              width: context.screenWidth / 4.8,
                              height: 38.h,
                              index: index,
                              data: alltaypAdsPropertyList[index].label,
                              selectIndex: controller.allSelectedTaypIndex,
                              onPressed: () {
                                controller.onStateChanged('alltayp', index);
                              },
                            );
                          },
                        ),
                      )
                    : const SizedBox.shrink(
                        key: ValueKey(2),
                      )),

            CustomAnmSwit(
              child: (controller.selectedState == 2 &&
                      ['1', '2', '3'].contains(controller
                          .propertyId)) //////////////اذا كانت شقه او غرفه او مكتب وقيد التجهيز
                  ? Column(
                      key: const ValueKey(3),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.h),
                        CustomText(
                          data: 'مدة التسليم المتوقعة',
                          fontsize: 16.sp,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(height: 8.h),
                        CounterWidget(
                          data: 'عدد الاشهر',
                          onIncrement: controller.incrementMonthCount,
                          onDecrement: controller.decrementMonthCount,
                          count: controller.monthCount,
                        )
                      ],
                    )
                  : const SizedBox.shrink(
                      key: ValueKey(4),
                    ),
            )
          ],
        );
      },
    );
  }
}
