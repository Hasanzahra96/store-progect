import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class PropertyDetGlobalInfoSection
    extends GetView<PropertiesDetailsController> {
  const PropertyDetGlobalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesDetailsController>(
      builder: (controller) {
        return Column(
          children: [
            Row(
              children: [
                CustomText(
                  data: controller.propertyItemModel.title ?? '',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                  fontweight: FontWeight.bold,
                ),
                controller.propertyItemModel.subtitle == ''
                    ? const SizedBox()
                    : CustomText(
                        data: ' / ',
                        fontsize: 18.sp,
                        color: AppColor.buttonColor,
                      ),
                CustomText(
                  data: controller.propertyItemModel.subtitle ?? '',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                ),
                const Spacer(),
                CustomText(
                  data: controller.propertyItemModel.pay ?? '',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                  fontweight: FontWeight.bold,
                ),
                CustomText(
                  data: ' / ',
                  fontsize: 16.sp,
                  color: AppColor.buttonColor,
                ),
                CustomText(
                  data: controller.propertyItemModel.lowState,
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  data: controller.propertyItemModel.state,
                  fontsize: 14.sp,
                  color: AppColor.greyColor,
                  fontweight: FontWeight.bold,
                ),
                CustomText(
                  data: '${controller.propertyItemModel.price}\$',
                  fontsize: 16.sp,
                  color: AppColor.browneColor,
                ),
              ],
            ),
            controller.payTypeId == "3"
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 16.h),
                          CustomText(
                            data: 'الدفعة الأولى : 5000000 ل.س',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                            fontweight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          CustomText(
                            data: 'القسط الشهري / 10 أشهر : 500000 ل.س',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                            fontweight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ],
                  )
                : const SizedBox.shrink()
          ],
        );
      },
    );
  }
}
