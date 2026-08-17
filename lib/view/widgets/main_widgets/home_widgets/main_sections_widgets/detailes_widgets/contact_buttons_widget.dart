import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_button.dart';

class ContactButtonsWidget extends StatelessWidget {
  final String? firstText;
  final String? lastText;
  final double? fontsize;
  final Function()? onPressedCall;
  final Function()? onPressedWhatsApp;
  const ContactButtonsWidget({
    super.key,
    required this.onPressedCall,
    required this.onPressedWhatsApp,
    this.firstText,
    this.lastText,
    this.fontsize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            data: firstText ?? 'اتصال',
            fontsize: fontsize ?? 18.sp,
            height: 48.h,
            minWidth: 168.w,
            colorB: AppColor.buttonColor,
            colorF: Colors.white,
            fontWeight: FontWeight.bold,
            onPressed: onPressedCall,
          ),
        ),
        SizedBox(
          width: 30.w,
        ),
        Expanded(
          child: CustomButton(
            data: lastText ?? 'واتساب',
            fontsize: fontsize ?? 18.sp,
            height: 48.h,
            fontWeight: FontWeight.bold,
            minWidth: 158.w,
            colorB: AppColor.greenColor,
            colorF: Colors.white,
            onPressed: onPressedWhatsApp,
          ),
        ),
      ],
    );
  }
}
