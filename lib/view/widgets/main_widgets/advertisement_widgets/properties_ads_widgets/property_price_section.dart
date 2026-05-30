import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/text_form_field_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/tow_column_widget.dart';

class PropertyPriceSection extends GetView<PropertiesAdvertisementController> {
  const PropertyPriceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          align: AlignmentDirectional.centerStart,
          data: 'ادخل السعر المطلوب بالعملة المحلية',
          fontsize: 12.sp,
          color: AppColor.buttonColor,
        ),
        SizedBox(height: 8.h),
        CustomTextFormField(
          controller: controller.priceController,
          isborderSide: false,
          keyboardType: TextInputType.number,
          hintText: 'مثال : 5000000',
        ),
        SizedBox(height: 8.h),
        GetBuilder<PropertiesAdvertisementController>(
          id: 'priceInfo',
          builder: (controller) {
            return CustomAnmSwit(
              child: controller.selectedTaypIndex == 2
                  ? Column(
                      key: const ValueKey(1),
                      children: [
                        CustomText(
                          align: AlignmentDirectional.centerStart,
                          data: 'الدفعة الأولى (بالعملة المحلية) ',
                          fontsize: 16.sp,
                          color: AppColor.fontColor,
                          fontweight: FontWeight.bold,
                        ),
                        CustomTextFormField(
                          controller: controller.firstPaymentController,
                          isborderSide: false,
                          keyboardType: TextInputType.number,
                          hintText: 'مثال : 50000',
                        ),
                        SizedBox(height: 8.h),
                        TowColumnWidget(
                          firstData: 'عدد الأشهر',
                          secondData: 'قيمة القسط الشهري',
                          firstWidget: TextFormFieldWidget(
                            controller: controller.monthNumController,
                            hintText: 'مثال : 10000 ',
                          ),
                          secondWidget: TextFormFieldWidget(
                            controller: controller.monthlyPaymentController,
                            hintText: 'مثال :  10000 ',
                          ),
                        )
                      ],
                    )
                  : const SizedBox.shrink(
                      key: ValueKey(2),
                    ),
            );
          },
        )
      ],
    );
  }
}
