import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertisement_controller/vechicles_advertisement_controller.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/add_photos.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_basicInfo_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_contact_info_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_exterior_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_features_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_interior_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_location_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/vechicles_ads_widgets/car_price_section.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/main_adrees_widget.dart';

class VechiclesAdvertisementScreen
    extends GetView<VechiclesAdvertisementController> {
  const VechiclesAdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
            title: 'إضافة إعلان جديد',
            isShape: true,
            isBack: true,
            backFunction: () => controller.showDialoge()),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: Column(children: [
              const MainAdreesWidget(
                data: 'صور المركبة',
                top: 16,
              ),
              AddPhotos(
                controller: controller.addPhotoController,
                tag: 'vechicles',
              ), ///////////////////////////قسم اضافة الصور
              const MainAdreesWidget(
                data: 'الموقع',
              ),
              const CarLocationSection(), //////////////////////////////////// قسم الموقع
              const MainAdreesWidget(
                data: 'المعلومات الاساسية',
              ),
              const CarBasicInfoSection(), ////////////////////قسم المعلومات الاساسية
              const MainAdreesWidget(
                data: 'المواصفات الخارجية',
              ),
              CarExteriorSection(), /////////////////////////قسم المواصفات الخارجية
              const MainAdreesWidget(
                data: 'المواصفات الداخليه',
              ),
              CarInteriorSection(), /////////////////////////قسم المواصفات الداخلية
              const MainAdreesWidget(
                data: 'المميزات',
              ),
              const CarFeaturesSection(), /////////////////////////قسم المميزات
              const MainAdreesWidget(
                data: 'تفاصيل اخرى',
                top: 16,
                bottom: 4,
              ), //////////////////////قسم تفاصيل اخرى
              CustomTextFormField(
                controller: controller.moreInfoController,
                isborderSide: false,
                maxLines: 4,
                hintText: '... اذكر مزايا أو عيوب أخرى إن وجدت ',
              ),
              const MainAdreesWidget(
                data: 'السعر',
                top: 16,
              ),
              CarPriceSection(), //////////////////////قسم السعر
              const MainAdreesWidget(
                data: 'معلومات التواصل',
                top: 16,
              ),
              CarContactInfoSection(), ////////////////////////قسم معلومات التواصل
              SizedBox(
                height: 40.h,
              ),
              CustomButton(
                onPressed: () {
                  Get.toNamed(
                    AppRouts.aprovePostingScreen,
                  );
                },
                data: 'نشر الاعلان',
              )
            ]),
          )),
        ));
  }
}
