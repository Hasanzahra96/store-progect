import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/view/widgets/custom_text.dart';

class CustomDropDown extends StatelessWidget {
  final Function(String?)? onChanged;
  final double? height;
  final double? width;
  final double? fontsize;
  final Color? fontcolor;
  final Color? color;
  final String? value;
  final String data;
  final List<String> items;

  const CustomDropDown({
    super.key,
    this.value,
    this.onChanged,
    required this.data,
    required this.items,
    this.height,
    this.width,
    this.fontsize,
    this.fontcolor,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: color,
      ),
      child: DropdownButton2(
        hint: CustomText(data: data, fontsize: fontsize, color: fontcolor),
        iconStyleData: IconStyleData(iconSize: 30.r),
        items: items
            .map((item) => DropdownMenuItem<String>(
                  onTap: () {},
                  value: item,
                  child: Text(
                    item,
                  ),
                ))
            .toList(),
        value: value,
        onChanged: onChanged,
        underline: SizedBox(),
      ),
    );
  }
}
