import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/model/properties_model/property_item_model.dart';
import 'package:store/view/widgets/custom_text.dart';

class PropertiesSuggestedWidget extends StatelessWidget {
  final PropertyItemModel propertyItemModel;
  const PropertiesSuggestedWidget({super.key, required this.propertyItemModel});

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Container(
      width: 280.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: AppColor.greyColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(-1, -1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      data: propertyItemModel.title ?? '',
                      fontsize: 16.sp,
                      color: AppColor.buttonColor,
                    ),
                    CustomText(
                      data: ' / ',
                      fontsize: 16.sp,
                      color: AppColor.buttonColor,
                    ),
                    CustomText(
                      data: propertyItemModel.subtitle ?? '',
                      fontsize: 12.sp,
                      color: AppColor.greyColor,
                    ),
                    const Spacer(),
                    CustomText(
                      data: propertyItemModel.time ?? '',
                      fontsize: 12.sp,
                      color: AppColor.greyColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 14.r,
                      color: AppColor.greyColor,
                    ),
                    CustomText(
                      data: propertyItemModel.location ?? '',
                      fontsize: 12.sp,
                      color: AppColor.greyColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(
                  propertyItemModel.image ?? '',
                  fit: BoxFit.cover,
                  height: 150.h,
                  gaplessPlayback: true,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Positioned(
                top: 8,
                left: isRtl ? 8 : 230,
                child: CircleAvatar(
                  backgroundColor: AppColor.whiteColor,
                  radius: 16.r,
                  child: Icon(
                    Icons.favorite_border,
                    size: 24.sp,
                    color: AppColor.fontColor,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Row(
              children: [
                Icon(
                  size: 16.r,
                  Icons.home_work,
                  color: AppColor.greyColor,
                ),
                SizedBox(
                  width: 2.w,
                ),
                CustomText(
                  data: "${propertyItemModel.area ?? 0}m²",
                  fontsize: 12.sp,
                  color: AppColor.greyColor,
                  margin: const EdgeInsets.only(top: 3),
                ),
                const Spacer(),
                Icon(
                  size: 16.r,
                  Icons.money,
                  color: AppColor.greyColor,
                ),
                SizedBox(
                  width: 2.w,
                ),
                CustomText(
                  data: "${propertyItemModel.price ?? 0} ل.س",
                  margin: const EdgeInsets.only(top: 3),
                  fontsize: 12.sp,
                  color: AppColor.greyColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
