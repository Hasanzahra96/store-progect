import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/data/datasource/static/prperties_lists/all_state_property_lists.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/chip_feature_button_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/counter_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/wrap_property_widget.dart';

class PropertyFeaturesSections
    extends GetView<PropertiesAdvertisementController> {
  const PropertyFeaturesSections({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PropertiesAdvertisementController>(
      id: 'feature',
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainAdreesWidget(
              data: 'مواصفات البناء',
            ),
            WrapPropertyWidget(
              list: propertyFeaturesAdsList,
              itemBuilder: (context, index) {
                final propertyFeaturesAds = propertyFeaturesAdsList[index];
                return ChipFeatureButtonWidget(
                  data: propertyFeaturesAds.label,
                  isSelected: propertyFeaturesAds.isSelected,
                  onPressed: () {
                    controller.featurcheckBoxChanged(
                        propertyFeaturesAds, propertyFeaturesAds.isSelected);
                  },
                );
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            CounterWidget(
              data: 'عدد الطوابق',
              onIncrement: controller.incrementFloorCount,
              onDecrement: controller.decrementFloorCount,
              count: controller.floorCount,
            ),
          ],
        );
      },
    );
  }
}
