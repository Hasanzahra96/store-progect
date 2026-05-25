import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/main_navigation_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class NavItemWidget extends GetView<MainNavigationcontroller> {
  final IconData icon;
  final String label;
  final int index;
  const NavItemWidget(
      {super.key,
      required this.icon,
      required this.label,
      required this.index});

  @override
  Widget build(BuildContext context) {
    final bool isSelected = controller.selectedIndex == index;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50.r),
        onTap: () {
          controller.changeIndex(index);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isSelected ? AppColor.browneColor : AppColor.buttonColor,
              size: 30.sp,
            ),
            CustomText(
              data: label,
              color: isSelected ? AppColor.browneColor : AppColor.buttonColor,
              fontsize: 12.sp,
            ),
          ],
        ),
      ),
    );
  }
}
