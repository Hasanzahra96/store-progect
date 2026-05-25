import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ads_state_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/button_widgets.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/drop_down_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/text_form_field_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/tow_column_widget.dart';

class CarBasicInfoSection extends GetView<VechiclesAdvertisementController> {
  const CarBasicInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VechiclesAdvertisementController>(
      id: 'basicInfo',
      builder: (controller) {
        return Column(
          children: [
            TowColumnWidget(
              firstData: 'النوع',
              secondData: 'الموديل',
              firstWidget: DropDownWidget(
                data: 'اختر',
                //  items: controller.carBrandlist,
                items: allRegons,
                value: controller.selectedCarBrand,
                onChanged: (value) {
                  controller.basicdropdownChanged(value, 1);
                },
              ),
              secondWidget: DropDownWidget(data: 'اختر', items: allRegons),
            ),
            SizedBox(height: 24.h),
            TowColumnWidget(
                firstData: 'سنة الصنع',
                secondData: 'الممشى',
                firstWidget: DropDownWidget(
                  data: 'اختر',
                  value: controller.selectedYear,
                  onChanged: (value) {
                    controller.basicdropdownChanged(value, 3);
                  },
                  items: allRegons,
                  //    items: controller.yearlist
                ),
                secondWidget: TextFormFieldWidget(
                  controller: controller.keloMeterController,
                  hintText: 'مثال : 120000 ',
                )),
            SizedBox(height: 24.h),
            TowColumnWidget(
              firstData: 'نوع الغير',
              secondData: 'الوقود',
              firstWidget: DropDownWidget(
                data: 'اختر',
                value: controller.selectedGeer,
                onChanged: (value) {
                  controller.basicdropdownChanged(value, 4);
                },
                items: allRegons,
                //   items: controller.geerlist
              ),
              secondWidget: DropDownWidget(
                data: 'اختر',
                value: controller.selectedFiole,
                onChanged: (value) {
                  controller.basicdropdownChanged(value, 5);
                },
                items: allRegons,
                //   items: controller.fiolelist
              ),
            ),
            SizedBox(height: 24.h),
            TowColumnWidget(
                firstData: 'نوع العداد',
                secondData: 'سعة المحرك',
                firstWidget: DropDownWidget(
                  data: 'اختر',
                  items: allRegons,
                  //  items: controller.countTybelist,
                  onChanged: (value) {
                    controller.basicdropdownChanged(value, 6);
                  },
                  value: controller.selectedCountTybe,
                ),
                secondWidget: TextFormFieldWidget(
                  controller: controller.enginCapController,
                  hintText: 'مثال : 2000',
                )),
            SizedBox(height: 24.h),
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'الحالة',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 8.h),
            AdsStateWidget(
              isSelected: [
                controller.selectedState == 0,
                controller.selectedState == 1
              ],
              onPressed: (p0) {
                controller.onStateChanged('state', p0);
              },
              children: List.generate(stateAdsCarList.length, (index) {
                return Text(stateAdsCarList[index].label);
              }),
            ), ///////////////////////حاله الاعلان
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
                taypAdsCarList.length,
                (index) {
                  return ButtonWidget(
                    index: index,
                    data: taypAdsCarList[index].label,
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
                          alltaypAdsCarList.length,
                          (index) {
                            return ButtonWidget(
                              width: context.screenWidth / 4.8,
                              height: 38.h,
                              index: index,
                              data: alltaypAdsCarList[index].label,
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
                      ))
          ],
        );
      },
    );
  }
}
