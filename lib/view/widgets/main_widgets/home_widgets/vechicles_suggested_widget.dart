import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/home_controller.dart';
import 'package:store/core/constant/color.dart';

import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';
import 'package:store/view/widgets/custom_text.dart';

class VechiclesSuggestedWidget extends GetView<HomeController> {
  final VechicleItemModel vechicleItemModel;
  final int index;
  const VechiclesSuggestedWidget(
      {super.key, required this.index, required this.vechicleItemModel});

  @override
  Widget build(BuildContext context) {
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
            alignment: AlignmentDirectional.topEnd,
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(vechicleItemModel.image ?? '',
                    gaplessPlayback: true,
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover),
              ),
              Obx(() {
                final isFavorite = controller.favoriteStore
                    .isVehicleFavorite(vechicleItemModel.id);

                return Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: AppColor.whiteColor, shape: BoxShape.circle),
                    child: IconButton(
                        visualDensity: VisualDensity.compact,
                        highlightColor: AppColor.tranColor,
                        onPressed: () {
                          controller
                              .toggleVechicleFavorite(vechicleItemModel.id);
                        },
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          size: 30.sp,
                          color: isFavorite
                              ? AppColor.redColor
                              : AppColor.fontColor,
                        )),
                  ),
                );
              })
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
