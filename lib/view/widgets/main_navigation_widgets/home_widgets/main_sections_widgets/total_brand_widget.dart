import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/model/total_brand_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store/view/widgets/custom_text.dart';

class TotalBrandWidget extends StatelessWidget {
  final TotalBrandModel totalBrandModel;
  final int selectIndex;
  final int index;
  final void Function() onPressed;
  const TotalBrandWidget({
    super.key,
    required this.index,
    required this.totalBrandModel,
    required this.selectIndex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = selectIndex == index;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            splashFactory: NoSplash.splashFactory,
            borderRadius: BorderRadius.circular(100.r),
            onTap: onPressed,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    )
                  ],
                  border: isSelected
                      ? Border.all(color: AppColor.buttonColor)
                      : Border.all(color: AppColor.whiteColor)),
              child: CircleAvatar(
                backgroundColor: AppColor.whiteColor,
                radius: 27.r,
                child: CircleAvatar(
                  radius: 24.r,
                  backgroundColor:
                      isSelected ? AppColor.buttonColor : AppColor.button2Color,
                  child: SvgPicture.asset(
                    totalBrandModel.svg ?? '',
                    width: 30.w,
                    // ignore: deprecated_member_use
                    color:
                        isSelected ? AppColor.whiteColor : AppColor.fontColor,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomText(
            data: totalBrandModel.title ?? '',
            color: isSelected ? AppColor.buttonColor : AppColor.fontColor,
            fontsize: 16.sp,
          )
        ],
      ),
    );
  }
}
