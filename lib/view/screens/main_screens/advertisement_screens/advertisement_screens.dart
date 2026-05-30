import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/category_card_ads.dart';

class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'انشاء إعلان جديد',
        isShape: true,
        isBack: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              children: [
                SizedBox(height: 24.h),
                CustomText(
                  data: 'ابدأ بإضافة إعلانك',
                  fontsize: 18.sp,
                  fontweight: FontWeight.w700,
                ),
                SizedBox(height: 24.h),
                CustomText(
                  data:
                      'حدد ما إذا كنت ترغب في إضافة إعلان سيارة أو عقار، وسنوجهك\nإلى الخطوات المناسبة.',
                  fontsize: 12.sp,
                  fontweight: FontWeight.normal,
                  color: AppColor.greyColor,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 80.h),
                CategoryCard(
                  image: const AssetImage(AppImageAssets.rectangle224),
                  icon: Icons.directions_car_filled,
                  title: 'مركبات',
                  subtitle: 'سيارات، شاحنات، و مركبات',
                  onTap: () {
                    Get.toNamed(AppRouts.vechiclesAdvertisementScreen);
                  },
                ),
                SizedBox(height: 12.h),
                CategoryCard(
                  image: AssetImage(AppImageAssets.rectangle223),
                  icon: Icons.house_rounded,
                  title: 'عقارات',
                  subtitle: 'بيوت، شقق سكنية و غرف',
                  onTap: () {
                    Get.toNamed(AppRouts.propertiesAdvertisementScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0.r),
              child: CustomTextRich(
                data: 'قائمة إعلاناتي',
                fontweight: FontWeight.w600,
                color: AppColor.browneColor,
                underlincolor: AppColor.browneColor,
                fontsize: 16.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
