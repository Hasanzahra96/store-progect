import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/view/widgets/custom_text.dart';

class SmallDropDownFilterWidget<T> extends StatelessWidget {
  final void Function(T?)? onChanged;
  final double? height;
  final double? width;
  final double? fontsize;
  final Color? fontcolor;
  final Color? color;
  final T? value;
  final String? data;
  final List<T>? items;
  final String Function(T)? itemBuilder;
  final void Function()? onTap;
  final IconData? icon;
  final EdgeInsetsGeometry? padding;

  const SmallDropDownFilterWidget({
    super.key,
    this.value,
    this.onChanged,
    this.data,
    this.items,
    this.height,
    this.width,
    this.fontsize,
    this.fontcolor,
    this.color,
    this.onTap,
    this.itemBuilder,
    this.icon,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton2<T>(
      dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          width: 150.w,
          maxHeight: 200.h,
          scrollPadding: EdgeInsets.all(20.r)),
      menuItemStyleData: const MenuItemStyleData(
          height: 30, overlayColor: WidgetStateColor.transparent),
      buttonStyleData: ButtonStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: items!
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
      customButton: Container(
        height: height ?? 48.h,
        width: width ?? context.screenWidth / 2.3,
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: color ?? AppColor.checkBoxColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            CustomText(
              data: value != null ? itemBuilder!(value as T) : data.toString(),
              fontsize: fontsize,
              color: AppColor.buttonColor,
            ),
            const Spacer(),
            Transform.rotate(
              angle: 1.5708, // تقريبًا 90 درجة بالراديان
              child: Icon(
                color: AppColor.buttonColor,
                Icons.arrow_back_ios_outlined,
                size: 15.r,
              ),
            ),
          ],
        ),
      ),
      underline: const SizedBox(),
    );
  }
}
