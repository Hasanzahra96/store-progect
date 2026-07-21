import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/digital_payment_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CashPaymentWidget extends GetView<DigitalPaymentController> {
  final String? image;
  final String? name;
  final int? index;
  final void Function()? onPress;
  const CashPaymentWidget({
    super.key,
    this.image,
    this.name,
    this.onPress,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = controller.selectedIndex == index;
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        InkWell(
          onTap: onPress,
          child: Container(
            height: 100.h,
            width: 170.w,
            decoration: BoxDecoration(
              color: AppColor.white2Color,
              borderRadius: BorderRadius.circular(12),
              border: isSelected
                  ? Border.all(color: AppColor.browneColor, width: 2)
                  : Border.all(color: AppColor.button2Color, width: 2),
            ),
            child: Center(
                child: Column(
              children: [
                Image.asset(image!, width: 80.w, height: 60.h),
                CustomText(
                    data: name ?? '',
                    fontsize: 16.sp,
                    color: isSelected
                        ? AppColor.browneColor
                        : AppColor.buttonColor),
              ],
            )),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.r),
          child: Icon(
            Icons.check_circle,
            color: isSelected ? AppColor.browneColor : AppColor.tranColor,
          ),
        ),
      ],
    );
  }
}
