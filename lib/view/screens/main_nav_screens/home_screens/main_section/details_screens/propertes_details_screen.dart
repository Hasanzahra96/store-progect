import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/properties_controller/properties_detailes_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/account_info_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/contact_buttons_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/gallery_view_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/properties_details_widget/land_det_features_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/properties_details_widget/property_det_details_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/properties_details_widget/property_det_feature_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/properties_details_widget/property_det_global_info_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/properties_details_widget/property_det_location_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/properties_details_widget/property_det_similar_ads_section.dart';

class PropertesDetailsScreen extends GetView<PropertiesDetailsController> {
  const PropertesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تفاصيل العقار',
        isBack: true,
        isShape: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(16.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PropertyDetGlobalInfoSection(), //////////// قسم المعلومات العامة للعقار
                  SizedBox(height: 24.h),
                  GetBuilder<PropertiesDetailsController>(
                    builder: (controller) {
                      return GalleryViewWidget(
                        images: controller.propertyItemModel.images ??
                            [], //////////////////////////// قسم معرض الصور
                        activeIndex: controller.activeIndex,
                        carouselController: controller.carouselController,
                        onPageChanged: controller.onPageChanged,
                        onThumbnailTap: controller.onThumbnailTap,
                      );
                    },
                  ),
                  SizedBox(height: 8.h),
                  AccountInfoWidget(
                    userName: controller.propertyItemModel.user ?? '',

                    /// قسم معلومات الحساب
                    onPressedButton: () {},
                    onPressedFav: () {},
                    onPressedShare: () {},
                  ),

                  SizedBox(height: 8.h),
                  controller.propertyId == '4'
                      ? const LandDetFeaturesSection()
                      : /////////// قسم مواصفات الأرض (يظهر فقط إذا كان العقار أرضي)
                      Column(
                          children: [
                            const PropertyDetFeatureSection(),
                            const PropertyDetDetailsSection(), /////////// قسم تفاصيل العقار
                          ],
                        ), /////////  قسم مواصفات البناء

                  const PropertyDetLocationSection(), //////////// قسم الموقع
                  SizedBox(height: 24.h),
                  CustomText(
                    data:
                        'تم النشر في تاريخ 20-1-2026', ////////////// قسم تاريخ النشر
                    fontsize: 14.sp,
                    fontweight: FontWeight.bold,
                    color: AppColor.fontColor,
                  ),

                  const MainAdreesWidget(
                      data: 'إعلانات مشابهة'), ////////// قسم الإعلانات المشابهة
                  const PropertyDetSimilarAdsSection(),
                  SizedBox(height: 50.h),
                  ContactButtonsWidget(
                    onPressedCall: () {},
                    onPressedWhatsApp: () {}, ////////// قسم أزرار التواصل
                  )
                ],
              )),
        ),
      ),
    );
  }
}
