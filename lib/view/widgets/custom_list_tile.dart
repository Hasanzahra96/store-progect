import 'package:flutter/material.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_text.dart';

class CustomListTile extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final void Function()? onTap;
  const CustomListTile({super.key, this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: AppColor.browneColor)),
        child: Icon(
          icon,
          color: AppColor.browneColor,
        ),
      ),
      title: CustomText(
        data: title ?? '',
        fontsize: 16,
        color: AppColor.buttonColor,
        fontweight: FontWeight.bold,
      ),
      onTap: onTap,
    );
  }
}
