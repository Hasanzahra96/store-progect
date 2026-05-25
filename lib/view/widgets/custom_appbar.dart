import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontweight;
  final Color titleColor;
  final Color borderColor;
  final Color? iconLeadingColor;
  final double? iconLeadingSize;
  final double borderWidth;
  final Widget? leading;
  final List<Widget>? actions;
  final ShapeBorder? shape;
  final bool? isBack;
  final bool? isShape;
  final void Function()? backFunction;
  const CustomAppBar({
    super.key,
    required this.title,
    this.fontSize,
    this.titleColor = AppColor.whiteColor,
    this.borderColor = AppColor.verfyColor,
    this.borderWidth = 1,
    this.leading,
    this.actions,
    this.isBack = true,
    this.isShape = true,
    this.shape,
    this.iconLeadingColor,
    this.iconLeadingSize,
    this.fontweight = FontWeight.w600,
    this.backFunction,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: AppColor.whiteColor,
      ),
      shadowColor: AppColor.button2Color,
      backgroundColor: AppColor.buttonColor,
      scrolledUnderElevation: 5,
      shape: shape ??
          Border(
            bottom: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
      actions: actions,
      leading: leading ??
          IconButton(
              onPressed: () {
                if (backFunction != null) {
                  backFunction!();
                } else {
                  Get.back();
                }
              },
              icon: Icon(
                color: AppColor.whiteColor,
                size: 22.r,
                Icons.arrow_back_ios_new,
              )),
      centerTitle: true,
      title: CustomText(
        data: title,
        fontsize: fontSize ?? 20.sp,
        fontweight: fontweight,
        color: titleColor,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
