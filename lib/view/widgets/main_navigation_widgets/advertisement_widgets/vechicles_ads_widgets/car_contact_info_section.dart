import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/auth_widgets/custom_phone_field.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/custom_radio.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ckeck_box_row_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/radio_row_widget.dart';

class CarContactInfoSection extends GetView<VechiclesAdvertisementController> {
  const CarContactInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VechiclesAdvertisementController>(
      id: 'contact',
      builder: (controller) {
        return Column(
          children: [
            CustomText(
              align: AlignmentDirectional.centerStart,
              data: 'أرقام التواصل',
              fontsize: 16.sp,
              color: AppColor.fontColor,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 8.h,
            ),
            RadioRowWidget(
              radio: CustomRadio(
                value: 1,
                groupValue: controller.selectedValueContact,
                onChanged: (value) =>
                    controller.radioContactChangeValue(value!),
              ),
              title: 'استخدام أرقام حسابي',
            ),
            RadioRowWidget(
              radio: CustomRadio(
                value: 2,
                groupValue: controller.selectedValueContact,
                onChanged: (value) =>
                    controller.radioContactChangeValue(value!),
              ),
              title: 'استخدام رقم هاتف آخر',
            ),
            CustomAnmSwit(
              child: controller.selectedValueContact == 2
                  ? Column(
                      key: const ValueKey(1),
                      children: [
                        CustomPhoneField(
                          keyboardType: TextInputType.phone,
                          controller: controller.atherPhoneNumperController,
                        ),
                        CkeckBoxRowWidget(
                          ckeckBox: CustomCheckBox(
                            isBig: true,
                            value: controller.isCheck1,
                            onChanged: (val) {
                              controller.checkBoxChangedNumper(val, 1);
                            },
                          ),
                          title: 'استخدام نفس الرقم للواتساب',
                        ),
                        CkeckBoxRowWidget(
                          ckeckBox: CustomCheckBox(
                            isBig: true,
                            value: controller.isCheck2,
                            onChanged: (val) {
                              controller.checkBoxChangedNumper(val, 2);
                            },
                          ),
                          title: 'استخدام رقم آخر للواتساب',
                        ),
                        CustomAnmSwit(
                          child: controller.isCheck2
                              ? CustomPhoneField(
                                  key: const ValueKey(11),
                                  keyboardType: TextInputType.phone,
                                  controller:
                                      controller.whatsUpNumperController,
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
            ),
          ],
        );
      },
    );
  }
}
