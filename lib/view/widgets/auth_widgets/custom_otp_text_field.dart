import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';

class CustomOtpTextField extends StatelessWidget {
  final Function(String code)? onCodeChanged;
  final Function(String verificationCode)? onSubmit;
  const CustomOtpTextField({
    super.key,
    this.onCodeChanged,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Directionality(
      textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
      child: OtpTextField(
          textStyle: TextStyle(fontSize: 40.sp),
          borderRadius: BorderRadius.circular(12.r),
          fieldWidth: 70.w,
          margin: EdgeInsets.symmetric(horizontal: 5.w),
          disabledBorderColor: AppColor.verfyColor,
          fillColor: AppColor.button2Color,
          filled: true,
          numberOfFields: 4,
          showFieldAsBox: true,
          onCodeChanged: onCodeChanged,
          onSubmit: onSubmit),
    );
  }
}    // showDialog(
        //     context: context,
        //     builder: (context) {
        //       return AlertDialog(
        //         title: Text("Verification Code"),
        //         content: Text('Code entered is $verificationCode'),
        //       );
        //     });
