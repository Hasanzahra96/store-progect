import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/model/drawer_model/point_of_sale_model.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/contact_buttons_widget.dart';

class PointsOfSaleWidget extends StatelessWidget {
  final PointOfSaleModel pointOfSaleModel;
  const PointsOfSaleWidget({
    super.key,
    required this.pointOfSaleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: context.screenHeight < 650 ? 205 : 205.h,
      ),
      decoration: BoxDecoration(
          color: AppColor.button2Color,
          borderRadius: BorderRadius.circular(12.r)),
      padding: EdgeInsets.all(8.r),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(pointOfSaleModel.imagePath ?? '',
                    width: 50.w, height: 50.h, fit: BoxFit.cover)),
            title: CustomText(
              data: pointOfSaleModel.title ?? '',
              fontsize: 16.h,
              color: AppColor.buttonColor,
            ),
            subtitle: CustomText(
                data:
                    "${pointOfSaleModel.subTitle ?? ''} - ${pointOfSaleModel.location ?? ''}",
                fontsize: 12.sp,
                color: AppColor.greyColor),
          ),
          Row(
            children: [
              Icon(
                Icons.timelapse_outlined,
                color: AppColor.buttonColor,
                size: 16.sp,
              ),
              SizedBox(
                width: 4.w,
              ),
              CustomText(
                  data:
                      "${pointOfSaleModel.firstTime ?? ''} - ${pointOfSaleModel.lastTime ?? ''}",
                  fontsize: 12.sp,
                  color: AppColor.greyColor),
              const Spacer(),
              Icon(
                Icons.timeline_sharp,
                color: AppColor.buttonColor,
                size: 16.sp,
              ),
              SizedBox(
                width: 4.w,
              ),
              CustomText(
                  data: pointOfSaleModel.distans ?? '',
                  fontsize: 12.sp,
                  color: AppColor.greyColor),
            ],
          ),
          ContactButtonsWidget(
            firstText: 'الذهاب إلى الخريطة', lastText: 'اتصال', fontsize: 14.sp,
            onPressedCall: () {
              //   controller.showSubButtomshet();
            },
            onPressedWhatsApp: () {
              //    controller.showSubButtomshet();
            }, ////////// قسم أزرار التواصل
          )
        ],
      ),
    );
  }
}
