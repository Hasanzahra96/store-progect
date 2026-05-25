import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/datasource/static/vechicles_lists/all_state_car_lists.dart';
import 'package:store/view/widgets/custom_check_box.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/ckeck_box_row_widget.dart';

class CarFeaturesSection extends StatelessWidget {
  const CarFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VechiclesAdvertisementController>(
      id: 'featur',
      builder: (controller) {
        return Wrap(
          runSpacing: 8.h,
          children: carFeatureAdsList
              .map((feature) => SizedBox(
                    width: context.screenWidth / 2.2,
                    child: CkeckBoxRowWidget(
                      ckeckBox: CustomCheckBox(
                          value: feature.isSelected,
                          onChanged: (value) {
                            controller.featurcheckBoxChanged(feature, value!);
                          }),
                      title: feature.name,
                    ),
                  ))
              .toList(),
        );
      },
    );
  }
}
