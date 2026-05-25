import 'package:flutter/material.dart';

import 'package:store/core/constant/color.dart';

class CustomRangeSlider extends StatelessWidget {
  final double startValue;
  final double endValue;
  final void Function(RangeValues) onChanged;

  const CustomRangeSlider({
    super.key,
    required this.startValue,
    required this.endValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
        values: RangeValues(startValue, endValue),
        divisions: 1000000000 ~/ 10000000,
        min: 0,
        max: 1000000000,
        // labels: RangeLabels(
        //   startValue.floor().toString(),
        //   endValue.round().toString(),
        // ),
        activeColor: AppColor.buttonColor,
        inactiveColor: AppColor.verfyColor,
        onChanged: onChanged);
  }
}
