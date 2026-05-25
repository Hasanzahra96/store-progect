import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';

class AccountInfoWidget extends StatelessWidget {
  final String userName;
  final Function()? onPressedButton;
  final Function()? onPressedShare;
  final Function()? onPressedFav;
  const AccountInfoWidget(
      {super.key,
      required this.userName,
      this.onPressedButton,
      this.onPressedShare,
      this.onPressedFav});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColor.buttonColor,
          radius: 14.r,
          child: Icon(
            Icons.person_sharp,
            size: 22.sp,
            color: AppColor.whiteColor,
          ),
        ),
        SizedBox(width: 8.w),
        CustomText(
          data: userName,
          fontsize: 18.sp,
          color: AppColor.browneColor,
        ),
        Spacer(),
        CustomButton(
          data: 'متابعه',
          fontsize: 14.sp,
          height: 30.h,
          minWidth: 80.w,
          colorB: AppColor.buttonColor,
          colorF: Colors.white,
          onPressed: onPressedButton,
        ),
        Spacer(
          flex: 2,
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          icon: Icon(
            Icons.share_outlined,
          ),
          iconSize: 24.sp,
          color: AppColor.buttonColor,
          onPressed: onPressedShare,
        ),
        IconButton(
          visualDensity: VisualDensity.compact,
          onPressed: onPressedFav,
          icon: Icon(Icons.favorite_border_outlined),
          iconSize: 24.sp,
          color: AppColor.buttonColor,
        ),
      ],
    );
  }
}
