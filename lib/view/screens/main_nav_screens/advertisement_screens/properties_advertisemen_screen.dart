import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/properties_advertisement_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/add_photos.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/main_adrees_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/land_feature_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/property_basicInfo_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/property_contact_Info_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/property_detail_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/property_features_sections.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/property_location_section.dart';
import 'package:store/view/widgets/main_navigation_widgets/advertisement_widgets/properties_ads_widgets/property_price_section.dart';

class PropertiesAdvertisementScreen
    extends GetView<PropertiesAdvertisementController> {
  const PropertiesAdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'إضافة إعلان جديد',
          isShape: true,
          isBack: true,
          backFunction: () => controller.showDialoge(),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                  ),
                  child: Column(children: [
                    const MainAdreesWidget(
                      data: 'صور العقار',
                      top: 16,
                    ),
                    AddPhotos(
                      controller: controller.addPhotoController,
                      tag: 'properties',
                    ), ///////////////////////////قسم اضافة الصور
                    const MainAdreesWidget(
                      data: 'الموقع',
                    ),
                    const PropertyLocationSection(), ///////////////////قسم الموقع
                    const MainAdreesWidget(
                      data: 'المواصفات الرئيسية',
                    ),
                    const PropertyBasicInfoSection(), ///////////////////قسم المواصفات الرئيسية
                    GetBuilder<PropertiesAdvertisementController>(
                        id: 'basicInfo',
                        builder: (controller) {
                          return AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            child: (controller.propertyId != null &&
                                    ['1', '2', '3', '4']
                                        .contains(controller.propertyId))
                                ? Column(
                                    key: const ValueKey(1),
                                    children: [
                                      ['1', '2', '3']
                                              .contains(controller.propertyId)
                                          ? const Column(
                                              key: ValueKey(11),
                                              children: [
                                                PropertyFeaturesSections(), ////////////////////// قسم الميزات
                                                PropertyDetailSection(), //////////////////////قسم التفاصيل
                                              ],
                                            )
                                          : const LandFeatureSection(
                                              key: ValueKey(22),
                                            ),

                                      const MainAdreesWidget(
                                        data: 'تفاصيل اخرى',
                                        top: 16,
                                        bottom: 4,
                                      ), //////////////////////=========قسم تفاصيل اخرى
                                      CustomTextFormField(
                                        controller:
                                            controller.moreInfoController,
                                        isborderSide: false,
                                        maxLines: 4,
                                        hintText:
                                            '... اذكر مزايا أو عيوب أخرى إن وجدت ',
                                      ),
                                      const MainAdreesWidget(
                                        data: 'السعر',
                                        top: 16,
                                      ),
                                      const PropertyPriceSection(), //////////////////////قسم السعر
                                      const MainAdreesWidget(
                                        data: 'معلومات التواصل',
                                        top: 16,
                                      ),
                                      const PropertyContactInfoSection() ////////////////////////قسم معلومات التواصل
                                    ],
                                  )
                                : const SizedBox.shrink(
                                    key: ValueKey(11),
                                  ),
                          );
                        }),

                    SizedBox(
                      height: 40.h,
                    ),

                    GetBuilder<PropertiesAdvertisementController>(
                        id: 'basicInfo',
                        builder: (controller) {
                          return Column(
                            children: [
                              controller.propertyId != null
                                  ? CustomText(
                                      data:
                                          'سوف يتم حذف هذا الإعلان تلقائيا ً بعد اسبوع من تاريخه',
                                      fontsize: 14.sp,
                                      color: AppColor.redColor,
                                    )
                                  : Container(),
                              CustomButton(
                                isEnabel: controller.isPropertyTypeSelected,
                                onPressed: () {
                                  Get.toNamed(AppRouts.aprovePostingScreen);
                                },
                                data: 'نشر الاعلان',
                              ),
                            ],
                          );
                        })
                  ]))),
        ));
  }
}
