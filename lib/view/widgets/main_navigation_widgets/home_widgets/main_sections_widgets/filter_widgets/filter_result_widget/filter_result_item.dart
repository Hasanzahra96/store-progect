import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/filter_widgets/filter_result_widget/feature_item_widget.dart';

class FilterResultItem extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? subTitle;
  final int? price;
  final String? payState;
  final String? state;
  final String? time;
  final String? location;
  final String? regon;
  final List<Map<String, String>>? list;

  const FilterResultItem(
      {super.key,
      this.imagePath,
      this.title,
      this.subTitle,
      this.price,
      this.payState,
      this.state,
      this.list,
      this.location,
      this.regon,
      this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        constraints: BoxConstraints(
          minHeight: context.screenHeight < 650 ? 410 : 430.h,
        ),
        decoration: BoxDecoration(
          color: AppColor.button2Color,
          borderRadius: BorderRadius.all(
            Radius.circular(12.r),
          ),
        ),
        width: double.infinity,
        padding: EdgeInsets.all(8.r),
        child: Column(
          children: [
            //   SizedBox(height: 4.h),
            Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12.r),
                    ),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Image.asset(
                        imagePath ?? '',
                        filterQuality: FilterQuality.high,
                        width: double.infinity,
                        gaplessPlayback: true,
                        fit: BoxFit.cover,
                      ),
                    )),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
                  leading: CircleAvatar(
                    backgroundColor: AppColor.whiteColor,
                    radius: 16.r,
                    child: Icon(
                      Icons.favorite_border,
                      size: 24.sp,
                      color: AppColor.fontColor,
                    ),
                  ),
                  trailing: Container(
                    decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.r),
                        ),
                        border: Border.all(
                          color: AppColor.browneColor,
                          width: 1.w,
                        )),
                    width: 70.w,
                    height: 34.h,
                    child: CustomText(
                      data: payState ?? '',
                      fontsize: 12.sp,
                      fontweight: FontWeight.bold,
                      color: AppColor.buttonColor,
                      align: Alignment.center,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.all(8.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        data: title ?? '',
                        fontsize: 18.sp,
                        color: AppColor.buttonColor,
                        fontweight: FontWeight.bold,
                      ),
                      subTitle == ''
                          ? const SizedBox()
                          : CustomText(
                              data: ' / ',
                              fontsize: 18.sp,
                              color: AppColor.buttonColor,
                            ),
                      CustomText(
                        data: subTitle ?? '',
                        fontsize: 18.sp,
                        color: AppColor.buttonColor,
                      ),
                      const Spacer(),
                      CustomText(
                        data: ' ${price ?? 0} ل.س',
                        fontsize: 16.sp,
                        fontweight: FontWeight.bold,
                        color: AppColor.browneColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  CustomText(
                    data: state ?? '',
                    fontsize: 14.sp,
                    color: AppColor.fontColor,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Wrap(
                    spacing: 8.w,
                    runSpacing: 8.h,
                    children: list!
                        .map((item) => FeatureItemWidget(
                              label: item['label'] ?? '',
                              feature: item['feature'] ?? '',
                            ))
                        .toList(),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 20.sp,
                        color: AppColor.buttonColor,
                      ),
                      SizedBox(width: 8.w),
                      CustomText(
                        data: '${location ?? ''} - ${regon ?? ' '}',
                        fontsize: 14.sp,
                        color: AppColor.buttonColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
