import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/model/properties_model/property_item_model.dart';
import 'package:store/view/widgets/custom_text.dart';

class PropertyItemWidget extends GetView<PropertiesController> {
  final PropertyItemModel propertyItemModel;
  const PropertyItemWidget({super.key, required this.propertyItemModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: GestureDetector(
        onTap: () {
          controller.goToPropertyDetails(propertyItemModel);
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
                            data: propertyItemModel.title ?? '',
                            fontsize: 16.sp,
                            color: AppColor.browneColor,
                          ),
                          propertyItemModel.subtitle == ''
                              ? const SizedBox()
                              : CustomText(
                                  data: ' / ',
                                  fontsize: 16.sp,
                                  color: AppColor.browneColor,
                                ),
                          CustomText(
                            data: propertyItemModel.subtitle ?? '',
                            fontsize: 12.sp,
                            color: AppColor.greyColor,
                          ),
                          const Spacer(),
                          CustomText(
                            data: '${propertyItemModel.price ?? 0}\$',
                            fontsize: 16.sp,
                            color: AppColor.browneColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: propertyItemModel.time ?? '',
                        fontsize: 12.sp,
                        color: AppColor.greyColor,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 16.sp,
                            color: AppColor.greyColor,
                          ),
                          SizedBox(width: 4.w),
                          CustomText(
                            data: propertyItemModel.location ?? '',
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
                            data: propertyItemModel.pay ?? '',
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
                          Flexible(
                            flex: 3,
                            child: CustomText(
                              data: propertyItemModel.state,
                              fontsize: 12.sp,
                              color: AppColor.greyColor,
                            ),
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
                            data: propertyItemModel.user ?? '',
                            fontsize: 14.sp,
                            color: AppColor.browneColor,
                          ),
                          const Spacer(),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            icon: const Icon(
                              Icons.share_outlined,
                            ),
                            iconSize: 22.sp,
                            color: AppColor.greyColor,
                            onPressed: () {},
                          ),
                          IconButton(
                            visualDensity: VisualDensity.compact,
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border_outlined),
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
                      propertyItemModel.image ?? '',
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
