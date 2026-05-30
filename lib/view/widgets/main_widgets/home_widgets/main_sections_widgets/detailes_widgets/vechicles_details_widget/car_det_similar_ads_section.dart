import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/core/utile/media_query.dart';
import 'package:store/data/model/vechicle_model/vechicle_item_model.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/similar_ads_widget.dart';

class CarDetSimilarAdsSection extends GetView<VechiclesDetailsController> {
  const CarDetSimilarAdsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight < 650 ? 200 : 200.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final VechicleItemModel vechicleItemModel =
                controller.vechical[index];
            return GestureDetector(
              onTap: () {
                Get.toNamed(AppRouts.vechiclesDetailsScreen,
                    preventDuplicates: false,
                    arguments: {
                      'id': vechicleItemModel.id,
                      'brandId': vechicleItemModel.brandId,
                    });
              },
              child: SimilarAdsWidget(
                imagePath: vechicleItemModel.image ?? '',
                title: vechicleItemModel.title ?? '',
                subTitle: vechicleItemModel.subtitle ?? '',
                price: vechicleItemModel.price ?? 0,
                state: vechicleItemModel.state ?? '',
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(width: 16.w);
          },
          itemCount: controller.vechical.length),
    );
  }
}
