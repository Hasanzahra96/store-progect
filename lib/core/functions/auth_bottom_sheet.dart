import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/functions/show_custom_bottom_sheet.dart';
import 'package:store/view/widgets/custom_button.dart';

authBottomSheet({Function()? onPressed1, Function()? onPressed2}) {
  showCustomBottomSheet(actions: [
    Column(mainAxisSize: MainAxisSize.min, children: [
      CustomButton(
        data: 'تسجيل الدخول',
        onPressed: onPressed1,
      ),
      CustomButton(
        colorB: AppColor.button2Color,
        data: 'إنشاء حساب',
        colorF: AppColor.fontColor,
        onPressed: onPressed2,
      ),
    ])
  ]);
}
