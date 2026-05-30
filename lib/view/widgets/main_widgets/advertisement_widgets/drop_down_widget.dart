import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/view/widgets/custom_text.dart';

class DropDownWidget<T> extends StatelessWidget {
  final void Function(T?)? onChanged;
  final double? height;
  final double? width;
  final double? fontsize;
  final Color? fontcolor;
  final Color? color;
  final T? value;
  final String data;
  final List<T> items;
  final String Function(T)? itemBuilder;
  final void Function()? onTap;

  const DropDownWidget({
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
    this.onTap,
    this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<T>(
      dropdownStyleData: DropdownStyleData(
          useSafeArea: true,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          width: 150.w,
          maxHeight: 200.h,
          scrollPadding: EdgeInsets.all(20.r)),
      menuItemStyleData: const MenuItemStyleData(
          height: 30, overlayColor: WidgetStateColor.transparent),
      buttonStyleData: ButtonStyleData(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
        ),
        decoration: BoxDecoration(
            border:
                Border.all(color: color ?? AppColor.greyColor.withOpacity(0.3)),
            borderRadius: BorderRadius.circular(12.r)),
        height: 57.h,
        width: context.screenWidth / 2.3,
      ),
      isDense: true,
      isExpanded: true,
      hint: CustomText(
          data: data, fontsize: fontsize, color: fontcolor ?? Colors.grey),
      iconStyleData: IconStyleData(iconSize: 30.r),
      items: items
          .map((item) => DropdownMenuItem<T>(
                onTap: onTap,
                value: item,
                child: Text(
                  itemBuilder != null ? itemBuilder!(item) : item.toString(),
                ),
              ))
          .toList(),
      value: value,
      onChanged: onChanged,
      underline: SizedBox(),
    );
  }
}
