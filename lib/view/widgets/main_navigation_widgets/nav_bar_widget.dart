import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/main_navigation_controller.dart';
import 'package:store/core/constant/color.dart';

import 'package:store/view/widgets/main_navigation_widgets/nav_item_widget.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationcontroller>(
      builder: (controller) {
        return BottomAppBar(
          color: AppColor.button2Color,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.r,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItemWidget(
                icon: Icons.home_outlined,
                index: 0,
                label: "الرئيسيه",
              ),
              NavItemWidget(
                icon: Icons.favorite_border_outlined,
                index: 1,
                label: "المفضله",
              ),
              SizedBox(
                width: 30.w,
              ),
              NavItemWidget(
                icon: Icons.campaign_outlined,
                index: 2,
                label: "اعلاناتي",
              ),
              NavItemWidget(
                icon: Icons.person_pin_outlined,
                index: 3,
                label: "متابعاتي",
              ),
            ],
          ),
        );
      },
    );
    // BottomNavigationBar(
    //   iconSize: 25,
    //   selectedItemColor: AppColor.browneColor,
    //   selectedLabelStyle:
    //       const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Tajawal'),
    //   unselectedLabelStyle: const TextStyle(fontFamily: 'Tajawal'),
    //   currentIndex: index,
    //   onTap: ontap,
    //   type: BottomNavigationBarType.fixed,
    //   items: [
    //     const BottomNavigationBarItem(
    //         icon: Icon(Icons.home_outlined), label: "الرئيسيه"),
    //     BottomNavigationBarItem(
    //         icon: Container(
    //             margin: EdgeInsets.only(left: 40),
    //             child: Icon(Icons.favorite_border_outlined)),
    //         label: "المفضله"),
    //     BottomNavigationBarItem(
    //         icon: Container(
    //             margin: EdgeInsets.only(right: 40),
    //             child: Icon(Icons.campaign_outlined)),
    //         label: "اعلاناتي"),
    //     BottomNavigationBarItem(
    //         icon: Icon(Icons.person_pin_outlined), label: "متابعاتي"),
    //   ],
    // )
  }
}
