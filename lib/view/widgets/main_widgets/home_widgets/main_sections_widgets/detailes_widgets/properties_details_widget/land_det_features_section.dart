import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/details_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/wrap_widget.dart';

class LandDetFeaturesSection extends GetView<PropertiesDetailsController> {
  const LandDetFeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainAdreesWidget(
          data: 'المواصفات الأساسية',
        ),
        Wrap(
          alignment: WrapAlignment.start,
          runSpacing: 16,
          spacing: 50,
          children: controller.getFilteredLand().map((feature) {
            return DetailsWidget(
              firstTitel: feature['label']!,
              firstSubTitel: feature['value']!,
            );
          }).toList(),
        ),
        const MainAdreesWidget(
          data: 'الخدمات المتوفرة',
        ),
        WrapWidget(list: controller.landFeature),
      ],
    );
  }
}
