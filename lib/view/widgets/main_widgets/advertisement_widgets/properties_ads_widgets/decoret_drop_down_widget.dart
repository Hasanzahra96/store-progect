import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class DecoretDropDownWidget<T> extends StatelessWidget {
  final String title;
  final void Function(T?) onChanged;
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

  const DecoretDropDownWidget({
    super.key,
    this.value,
    required this.onChanged,
    required this.data,
    required this.items,
    this.height,
    this.width,
    this.fontsize,
    this.fontcolor,
    this.color,
    this.onTap,
    this.itemBuilder,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColor.button2Color,
        border: Border.all(color: AppColor.verfyColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            data: title,
            color: AppColor.buttonColor,
          ),
          DropdownButton2<T>(
            dropdownStyleData: DropdownStyleData(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                width: 150.w,
                maxHeight: 200.h,
                scrollPadding: EdgeInsets.all(20.r)),
            menuItemStyleData: const MenuItemStyleData(
                height: 30, overlayColor: WidgetStateColor.transparent),
            items: items
                .map((item) => DropdownMenuItem<T>(
                      onTap: onTap,
                      value: item,
                      child: Text(
                        itemBuilder != null
                            ? itemBuilder!(item)
                            : item.toString(),
                      ),
                    ))
                .toList(),
            value: value,
            onChanged: onChanged,
            customButton: Row(
              children: [
                CustomText(
                  data: value != null ? value.toString() : data,
                  fontsize: fontsize,
                  color: value != null
                      ? AppColor.buttonColor
                      : fontcolor ?? Colors.grey,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Transform.rotate(
                  angle: 1.5708, // تقريبًا 90 درجة بالراديان
                  child: Icon(
                    color: AppColor.buttonColor,
                    Icons.arrow_back_ios_outlined,
                    size: 15.r,
                  ),
                )
              ],
            ),
            underline: const SizedBox(),
          )
        ],
      ),
    );
  }
}
