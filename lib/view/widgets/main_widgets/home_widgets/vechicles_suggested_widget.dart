import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';

import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';
import 'package:store/view/widgets/custom_text.dart';

class VechiclesSuggestedWidget extends StatelessWidget {
  final VechicleItemModel vechicleItemModel;
  const VechiclesSuggestedWidget({super.key, required this.vechicleItemModel});

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
            padding: EdgeInsets.all(8.r),
            child: Column(
              children: [
                Row(
                  children: [
                    CustomText(
                      data: vechicleItemModel.title ?? '',
                      fontsize: 16.sp,
                      color: AppColor.buttonColor,
                    ),
                    CustomText(
                      data: ' / ',
                      fontsize: 16.sp,
                      color: AppColor.buttonColor,
                    ),
                    CustomText(
                      data: vechicleItemModel.subtitle ?? '',
                      fontsize: 12.sp,
                      color: AppColor.greyColor,
                    ),
                    const Spacer(),
                    CustomText(
                      data: vechicleItemModel.time ?? '',
                      fontsize: 12.sp,
                      color: AppColor.greyColor,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 16.sp,
                      color: AppColor.greyColor,
                    ),
                    CustomText(
                      data: vechicleItemModel.location ?? '',
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
                child: Image.asset(vechicleItemModel.image ?? '',
                    gaplessPlayback: true,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover),
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
            padding: EdgeInsets.all(8.r),
            child: Row(
              children: [
                Icon(
                  size: 16.r,
                  Icons.local_gas_station,
                  color: AppColor.greyColor,
                ),
                SizedBox(
                  width: 2.w,
                ),
                CustomText(
                  data: "${vechicleItemModel.feuleType}",
                  fontsize: 12.sp,
                  color: Colors.grey,
                  margin: const EdgeInsets.only(top: 3),
                ),
                Spacer(),
                Icon(
                  size: 16.r,
                  Icons.money,
                  color: AppColor.greyColor,
                ),
                SizedBox(
                  width: 2.w,
                ),
                CustomText(
                  data: "${vechicleItemModel.price}sp",
                  fontsize: 12.sp,
                  color: AppColor.greyColor,
                  margin: const EdgeInsets.only(top: 3),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
