import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/points_of_sale_controller.dart';
import 'package:store/data/datasource/static/drawer_list/point_of_sale_list.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/points_of_sale_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/filter_widgets/large_drop_down_filter_widget.dart';

import '../../../../data/model/state_model.dart';

class PointsOfSaleScreen extends GetView<PointsOfSaleController> {
  const PointsOfSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'نقاط البيع',
        ),
        body: GetBuilder<PointsOfSaleController>(builder: (controller) {
          return Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              children: [
                LargeDropDownFilterWidget(
                  data: 'كل المناطق',
                  itemBuilder: (StateModel item) => item.label,
                  value: controller.selectPointSaleFilterResultModel,
                  items: pointOfSaleFilterResultList,
                  onChanged: (value) {
                    if (value != null) {
                      controller.pointSaleFilterResultOnChanged(value);
                    }
                  },
                ),
                SizedBox(height: 16.0.h),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return PointsOfSaleWidget(
                              pointOfSaleModel: pointOfSaleList[index]);
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 8.0.h),
                        itemCount: pointOfSaleList.length))
              ],
            ),
          );
        }));
  }
}
