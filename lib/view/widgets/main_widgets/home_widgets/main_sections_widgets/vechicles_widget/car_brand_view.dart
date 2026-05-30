import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_controller.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/vechicles_lists/car_brand_list.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/total_brand_widget.dart';

class CarBrandView extends GetView<VechiclesController> {
  const CarBrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight < 650 ? 120 : 120.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: carBrandList.length,
        itemBuilder: (context, index) {
          return TotalBrandWidget(
            totalBrandModel: carBrandList[index],
            index: index,
            selectIndex: controller.selectIndex,
            onPressed: () {
              controller.onChanged(index);
            },
          );
        },
      ),
    );
  }
}
