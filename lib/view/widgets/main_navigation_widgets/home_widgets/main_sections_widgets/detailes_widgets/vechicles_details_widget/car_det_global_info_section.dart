import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CarDetGlobalInfoSection extends GetView<VechiclesDetailsController> {
  const CarDetGlobalInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VechiclesDetailsController>(
      builder: (controller) {
        return Column(
          children: [
            Row(
              children: [
                CustomText(
                  data: controller.vechicleItemModel.title ?? '',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                  fontweight: FontWeight.bold,
                ),
                CustomText(
                  data: ' / ',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                ),
                CustomText(
                  data: controller.vechicleItemModel.subtitle ?? '',
                  fontsize: 18.sp,
                  color: AppColor.buttonColor,
                ),
                const Spacer(),
                CustomText(
                  data: controller.vechicleItemModel.pay ?? '',
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
                  data: controller.vechicleItemModel.state ?? '',
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
                  data: controller.vechicleItemModel.time ?? '',
                  fontsize: 14.sp,
                  color: AppColor.greyColor,
                  fontweight: FontWeight.bold,
                ),
                CustomText(
                  data: '${controller.vechicleItemModel.price}\$',
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
