import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_controller.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/prperties_lists/property_brand_list.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/total_brand_widget.dart';

class PropertyBrandView extends GetView<PropertiesController> {
  const PropertyBrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight < 650 ? 120 : 120.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: propertyBrandList.length,
        itemBuilder: (context, index) {
          return TotalBrandWidget(
            totalBrandModel: propertyBrandList[index],
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
