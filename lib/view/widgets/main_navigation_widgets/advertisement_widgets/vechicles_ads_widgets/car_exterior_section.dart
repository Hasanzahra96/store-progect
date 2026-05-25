import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ads_state_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ckeck_box_row_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/text_form_field_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/tow_column_widget.dart';

class CarExteriorSection extends StatelessWidget {
  CarExteriorSection({
    super.key,
  });
  final VechiclesAdvertisementController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TowColumnWidget(
          firstData: 'اللون الخارجي',
          secondData: 'عدد الأبواب',
          firstWidget: TextFormFieldWidget(
            controller: controller.extColorController,
            hintText: 'مثال : احمر ',
          ),
          secondWidget: TextFormFieldWidget(
            controller: controller.doorNumController,
            hintText: 'مثال :  4 ',
          ),
        ),
        GetBuilder<VechiclesAdvertisementController>(
          id: 'exterior',
          builder: (controller) {
            return CustomAnmSwit(
              child: controller.selectedState == 1
                  ? Column(
                      key: const ValueKey(1),
                      children: [
                        SizedBox(
                          height: 24.h,
                        ),
                        CustomText(
                          align: AlignmentDirectional.centerStart,
                          data: 'هل تعرضت السيارة لحادث سابقاً ؟',
                          fontsize: 16.sp,
                          color: AppColor.fontColor,
                          fontweight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        AdsStateWidget(
                          isSelected: [
                            controller.selectedAcxedentState == 0,
                            controller.selectedAcxedentState == 1
                          ],
                          onPressed: (p0) {
                            controller.onacxedentStateChanged(p0);
                          },
                          children: List.generate(acxedentStateAdsList.length,
                              (index) {
                            return Text(acxedentStateAdsList[index].label);
                          }),
                        ),
                        CustomAnmSwit(
                          child: controller.selectedAcxedentState == 1
                              ? Column(
                                  key: const ValueKey(11),
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    CustomText(
                                      align: AlignmentDirectional.centerStart,
                                      data: 'تحديد نوع الضرر',
                                      fontsize: 14.sp,
                                      color: AppColor.fontColor,
                                      fontweight: FontWeight.bold,
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    Wrap(
                                      children: carCheckAdsItems
                                          .map((feature) => Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0),
                                                child: SizedBox(
                                                  width:
                                                      context.screenWidth / 2.3,
                                                  child: CkeckBoxRowWidget(
                                                    ckeckBox: CustomCheckBox(
                                                        value:
                                                            feature.isSelected,
                                                        onChanged: (value) {
                                                          controller
                                                              .acxedentCheckBoxChanged(
                                                                  feature,
                                                                  value!);
                                                        }),
                                                    title: feature.name,
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    CustomText(
                                      align: AlignmentDirectional.centerStart,
                                      data: 'تفاصيل الأضرار',
                                      fontsize: 14.sp,
                                      fontweight: FontWeight.bold,
                                      color: AppColor.fontColor,
                                    ),
                                    SizedBox(
                                      height: 8.h,
                                    ),
                                    CustomTextFormField(
                                      isborderSide: false,
                                      controller: controller.acxedentController,
                                      maxLines: 4,
                                      hintText:
                                          'اذكر تفاصيل إضافية عن الحادث أو القطع التي تم تبديلها',
                                    ),
                                  ],
                                )
                              : const SizedBox.shrink(
                                  key: ValueKey(22),
                                ),
                        )
                      ],
                    )
                  : const SizedBox.shrink(
                      key: ValueKey(2),
                    ),
            );
          },
        ),
      ],
    );
  }
}
