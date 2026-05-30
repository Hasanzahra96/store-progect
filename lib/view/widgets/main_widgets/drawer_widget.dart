import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/view/widgets/custom_list_tile.dart';
import 'package:store/view/widgets/custom_text_rich.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.whiteColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: ListView(
        padding: EdgeInsets.only(top: 32.h),
        children: [
          CircleAvatar(
            radius: 60.r,
            backgroundColor: Colors.transparent,
            backgroundImage: const AssetImage(AppImageAssets.logo),
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomListTile(
            icon: Icons.person_outline_sharp,
            title: 'حسابي',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.share_outlined,
            title: 'شارك التطبيق',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.subscriptions_outlined,
            title: 'الاشتراك',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.point_of_sale_outlined,
            title: 'نقاط البيع',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.language_outlined,
            title: 'اللغة',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.local_post_office_outlined,
            title: 'اقترح مكاتب',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.contact_support_outlined,
            title: 'الشروط و الأحكام',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.info_outline_rounded,
            title: 'حول التطبيق',
            onTap: () {},
          ),
          CustomListTile(
            icon: Icons.logout,
            title: 'تسجيل الخروج',
            onTap: () {},
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(AppImageAssets.facebook)),
              InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(AppImageAssets.instegram)),
              InkWell(
                  onTap: () {}, child: SvgPicture.asset(AppImageAssets.twitter))
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextRich(
                underlincolor: AppColor.greenColor,
                color: AppColor.greenColor,
                fontweight: FontWeight.bold,
                decorationThickness: 20,
                data: 'تواصل معنا عبر الواتساب',
                onTap: () {},
              ),
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset(AppImageAssets.whatsapp)
            ],
          )
        ],
      ),
    );
  }
}
