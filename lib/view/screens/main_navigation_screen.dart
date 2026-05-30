import 'package:flutter/material.dart';
import 'package:store/controller/main_nav_controller/main_navigation_controller.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/utile/custom_search.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/view/screens/main_screens/favorite_screen.dart';
import 'package:store/view/screens/main_screens/home_screens/home_screen.dart';
import 'package:store/view/screens/main_screens/my_ads_screen.dart';
import 'package:store/view/screens/main_screens/my_follows_screen.dart';
import 'package:store/view/widgets/main_widgets/drawer_widget.dart';
import 'package:store/view/widgets/main_widgets/floating_action_widget.dart';
import 'package:store/view/widgets/main_widgets/nav_bar_widget.dart';

class MainNavigationScreen extends StatelessWidget {
  MainNavigationScreen({super.key});
  final MainNavigationcontroller controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationcontroller>(builder: (controller) {
      List<Widget> pages = [
        const Homescreen(),
        const FavoriteScreen(),
        const MyAdsScreen(),
        const MyFollowsScreen()
      ];
      // Widget activePage;
      // switch (controller.selectedIndex) {
      //   case 0:
      //     activePage = Homescreen();
      //     break;
      //   case 1:
      //     activePage = FavoriteScreen();
      //     break;
      //   case 2:
      //     activePage = MyAdsScreen();
      //     break;
      //   case 3:
      //     activePage = MyFollowsScreen();
      //     break;
      //   default:
      //     activePage = const SizedBox.shrink();
      // }

      return Scaffold(
          appBar: AppBar(
            title: const Text(
              'logo',
              style: TextStyle(
                color: AppColor.whiteColor,
              ),
            ),
            centerTitle: true,
            shadowColor: AppColor.button2Color,
            backgroundColor: AppColor.buttonColor,
            scrolledUnderElevation: 10,
            iconTheme: const IconThemeData(
              color: AppColor.whiteColor,
            ),
            actions: [
              IconButton(
                onPressed: () {
                  CustomSearch searchDelegate = CustomSearch(allRegons);
                  showSearch(context: context, delegate: searchDelegate);
                },
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications),
              )
            ],
          ),
          drawerScrimColor: AppColor.buttonColor.withOpacity(0.5),
          drawer: const DrawerWidget(),
          body: pages[controller.selectedIndex],
          bottomNavigationBar: const NavBarWidget(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const FloatingActionWidget());
    });
  }
}
