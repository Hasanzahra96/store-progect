import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final bool isBig;
  final void Function(bool?) onChanged;
  const CustomCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
    this.isBig = false,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isBig ? 1 : 1.3.r,
      child: Checkbox(
          fillColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.disabled)) {
              return AppColor.checkBoxColor;
            }
            if (states.contains(WidgetState.selected)) {
              return Colors.green;
            }
            return AppColor.checkBoxColor;
          }),
          checkColor: Colors.white,
          activeColor: Colors.green,
          side: BorderSide.none,
          visualDensity: VisualDensity.compact,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.r),
          ),
          value: value,
          onChanged: onChanged),
    );
  }
}
