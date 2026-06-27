import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/advertiser_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/data/datasource/static/vechicles_lists/vechicles_filter_result_list.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/detailes_widgets/contact_buttons_widget.dart';
import 'package:store/view/widgets/main_widgets/home_widgets/main_sections_widgets/filter_widgets/filter_result_widget/filter_result_item.dart';

class AdvertiserAccountScreen extends GetView<AdvertiserController> {
  const AdvertiserAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    color: AppColor.buttonColor,
                    iconSize: 22.sp,
                    visualDensity: VisualDensity.compact,
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          data: controller.user,
                          color: AppColor.buttonColor,
                          fontsize: 22.sp,
                        ),
                        CustomText(
                          data: 'حساب شخصي',
                          color: AppColor.fontColor,
                          fontsize: 12.sp,
                        ),
                      ],
                    ),
                  ),
                  ClipOval(
                      child: Image.asset(
                    AppImageAssets.logo,
                    width: 80.w,
                    height: 80.h,
                  )),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              GetBuilder<AdvertiserController>(
                builder: (controller) => CustomButton(
                  data: controller.isfolowing ? 'متابعة' : 'إلغاء المتابعة',
                  onPressed: () {
                    if (controller.isfolowing == false) {
                      controller.showDialoge();
                      controller.toggleFollow();
                    }
                    controller.toggleFollow();
                  },
                  height: 38.h,
                  colorB: controller.isfolowing
                      ? AppColor.buttonColor
                      : AppColor.button2Color,
                  colorF: controller.isfolowing
                      ? AppColor.whiteColor
                      : AppColor.buttonColor,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: 'إعلانات هذا المعلن',
                  fontweight: FontWeight.bold,
                  color: AppColor.browneColor,
                  fontsize: 18.sp),
              SizedBox(
                height: 16.h,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: vechiclesFilterResultList.length,
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemBuilder: (context, index) {
                    final item = vechiclesFilterResultList[index];
                    return FilterResultItem(
                      list: controller.getFilteredFeatures(item),
                      imagePath: item.image,
                      location: item.location,
                      payState: item.pay,
                      price: item.price,
                      state: item.state,
                      regon: item.location,
                      subTitle: item.subtitle,
                      title: item.title,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: ContactButtonsWidget(
            ////////// قسم أزرار التواصل
            onPressedCall: () {},
            onPressedWhatsApp: () {},
          ),
        ),
      ),
    );
  }
}
