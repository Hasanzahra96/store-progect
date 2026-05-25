import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';
import 'package:store/view/widgets/custom_text.dart';

class VechicleItemWidget extends GetView<VechiclesController> {
  final VechicleItemModel vechicleItemModel;
  const VechicleItemWidget({super.key, required this.vechicleItemModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: GestureDetector(
        onTap: () {
          controller.goToVechicleDetails(vechicleItemModel);
        },
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(12.r),
              boxShadow: [
                BoxShadow(
                  color: AppColor.greyColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(-1, -1),
                ),
              ],
            ),
            height: 140.h,
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.r),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            data: vechicleItemModel.title ?? '',
                            fontsize: 16.sp,
                            color: AppColor.browneColor,
                          ),
                          CustomText(
                            data: ' / ',
                            fontsize: 16.sp,
                            color: AppColor.browneColor,
                          ),
                          CustomText(
                            data: vechicleItemModel.subtitle ?? '',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                          ),
                          const Spacer(),
                          CustomText(
                            data: '${vechicleItemModel.price ?? 0}\$',
                            fontsize: 16.sp,
                            color: AppColor.browneColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: vechicleItemModel.time ?? '',
                        fontsize: 12.sp,
                        color: AppColor.greyColor,
                      ),
                      const Expanded(child: SizedBox()),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 16.sp,
                            color: AppColor.greyColor,
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            data: vechicleItemModel.location ?? '',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.paypal,
                            size: 16.sp,
                            color: AppColor.greyColor,
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            data: vechicleItemModel.pay ?? '',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.stream_sharp,
                            size: 16.sp,
                            color: AppColor.greyColor,
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            data: vechicleItemModel.state ?? '',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColor.buttonColor,
                            radius: 12.r,
                            child: Icon(
                              Icons.person_sharp,
                              size: 16.sp,
                              color: AppColor.whiteColor,
                            ),
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            data: vechicleItemModel.user ?? '',
                            fontsize: 14.sp,
                            color: AppColor.browneColor,
                          ),
                          Spacer(),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            icon: Icon(
                              Icons.share_outlined,
                            ),
                            iconSize: 22.sp,
                            color: AppColor.greyColor,
                            onPressed: () {},
                          ),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            onPressed: () {},
                            icon: Icon(Icons.favorite_border_outlined),
                            iconSize: 22.sp,
                            color: AppColor.greyColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(4.r),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Image.asset(
                      vechicleItemModel.image ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
