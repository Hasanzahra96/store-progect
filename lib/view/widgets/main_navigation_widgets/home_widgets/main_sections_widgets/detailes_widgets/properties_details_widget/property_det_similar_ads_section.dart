import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/model/properties_model/property_item_model.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/similar_ads_widget.dart';

class PropertyDetSimilarAdsSection
    extends GetView<PropertiesDetailsController> {
  const PropertyDetSimilarAdsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight < 650 ? 200 : 200.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final PropertyItemModel propertyItemModel =
                controller.property[index];
            return GestureDetector(
              onTap: () {
                // Get.toNamed(AppRouts.vechiclesDetailsScreen,
                //     preventDuplicates: false,
                //     arguments: {
                //       'id': vechicleItemModel.id,
                //       'brandId': vechicleItemModel.brandId,
                //     });
              },
              child: SimilarAdsWidget(
                imagePath: propertyItemModel.image ?? '',
                title: propertyItemModel.title ?? '',
                subTitle: propertyItemModel.subtitle ?? '',
                price: propertyItemModel.price ?? 0,
                state: propertyItemModel.state,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 16.w);
          },
          itemCount: controller.property.length),
    );
  }
}
