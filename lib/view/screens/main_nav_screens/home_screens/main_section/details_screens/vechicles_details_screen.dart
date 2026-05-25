import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/home_controller/vechicles_controller/vechicles_details_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/account_info_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/contact_buttons_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/gallery_view_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/vechicles_details_widget/car_det_description_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/vechicles_details_widget/car_det_global_info_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/vechicles_details_widget/car_det_info_detaile_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/vechicles_details_widget/car_det_similar_ads_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/main_sections_widgets/detailes_widgets/wrap_widget.dart';

class VechiclesDetailsScreen extends GetView<VechiclesDetailsController> {
  const VechiclesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'تفاصيل المركبة',
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
                  const CarDetGlobalInfoSection(), //////////// قسم المعلومات العامة للمركبة
                  SizedBox(height: 24.h),
                  GetBuilder<VechiclesDetailsController>(
                    builder: (controller) {
                      return GalleryViewWidget(
                        images: controller.vechicleItemModel.images ??
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
                    userName: controller.vechicleItemModel.user ?? '',

                    /// قسم معلومات الحساب
                    onPressedButton: () {},
                    onPressedFav: () {},
                    onPressedShare: () {},
                  ),
                  SizedBox(height: 8.h),
                  const CarDetInfoDetaileSection(), ///////// قسم تفاصيل معلومات المركبة
                  const MainAdreesWidget(
                      data: 'الموقع'), //////////// قسم الموقع
                  CustomText(
                    align: AlignmentDirectional.centerStart,
                    fontsize: 16.sp,
                    data:
                        "${controller.vechicleItemModel.location ?? ''} - ${controller.vechicleItemModel.location ?? ''}",
                  ),
                  const MainAdreesWidget(data: 'المميزات'),
                  WrapWidget(list: controller.feature), ///////// قسم المميزات
                  SizedBox(height: 24.h),
                  const CarDetDescriptionSection(), //////////// قسم الوصف و المميزات الإضافية
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
                  const CarDetSimilarAdsSection(),
                  SizedBox(height: 50.h),
                  ContactButtonsWidget(
                    ////////// قسم أزرار التواصل
                    onPressedCall: () {},
                    onPressedWhatsApp: () {},
                  )
                ],
              )),
        ),
      ),
    );
  }
}
