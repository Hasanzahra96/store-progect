import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/favorite_controller.dart';

class FavoriteScreen extends GetView<FavoriteController> {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          //     child: Column(
          //       children: [
          //         Expanded(
          //           child: ListView.separated(
          //             separatorBuilder: (context, index) => SizedBox(height: 16.h),
          //             itemCount: controller.favoriteList.length,
          //             itemBuilder: (context, index) {
          //               final favoriteItem = controller.favoriteList[index];
          //               return FavoriteItemWidget(
          //                 // list: controller.getFilteredFeatures(favoriteItem),
          //                 imagePath: favoriteItem.image,
          //                 location: favoriteItem.location,
          //                 payState: favoriteItem.pay,
          //                 price: favoriteItem.price,
          //                 state: favoriteItem.state,
          //                 regon: favoriteItem.location,
          //                 subTitle: favoriteItem.subtitle,
          //                 title: favoriteItem.title,
          //               );
          //             },
          //           ),
          //         ),
          //       ],
          //     ),
        ),
      ),
    );
  }
}
