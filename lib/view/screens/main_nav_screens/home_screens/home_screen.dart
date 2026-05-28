import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:store/controller/main_nav_controller/home_controller/home_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/carousel_slider_widget.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/properties_suggested_view.dart';
import 'package:store/view/widgets/main_navigation_widgets/home_widgets/vechicles_suggested_view.dart';

class Homescreen extends GetView<HomeController> {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          await controller.loadData();
        },
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            GetBuilder<HomeController>(
              builder: (controller) {
                return SliverToBoxAdapter(
                  child: Skeletonizer(
                    enabled: controller.isLoading,
                    child: const CarouselSliderWidget(),
                  ),
                );
              },
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: 20.h,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          CustomText(
                            align: AlignmentDirectional.centerStart,
                            data: 'HomeScreen1'.tr,
                            fontsize: 18.sp,
                            color: AppColor.browneColor,
                            fontweight: FontWeight.bold,
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(AppRouts.propertiesScreen);
                                    },
                                    child: CircleAvatar(
                                      maxRadius: 35.r,
                                      backgroundColor: AppColor.buttonColor,
                                      child: CircleAvatar(
                                        maxRadius: 34.r,
                                        backgroundColor: AppColor.browneColor,
                                        child: Center(
                                          child: SvgPicture.asset(
                                            AppImageAssets.realestate,
                                            color: AppColor.buttonColor,
                                            height: 37.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  CustomText(
                                    align: AlignmentDirectional.centerStart,
                                    data: 'HomeScreen2'.tr,
                                    fontsize: 18.sp,
                                    color: AppColor.buttonColor,
                                  ),
                                ],
                              ),
                              SizedBox(width: 20.w),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(AppRouts.vechiclesScreen);
                                    },
                                    child: CircleAvatar(
                                      maxRadius: 35.r,
                                      backgroundColor: AppColor.buttonColor,
                                      child: CircleAvatar(
                                        maxRadius: 34.r,
                                        backgroundColor: AppColor.browneColor,
                                        child: Center(
                                          child: SvgPicture.asset(
                                            AppImageAssets.p,

                                            // ignore: deprecated_member_use
                                            color: AppColor.buttonColor,
                                            height: 33.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  CustomText(
                                    align: AlignmentDirectional.centerStart,
                                    data: 'HomeScreen3'.tr,
                                    fontsize: 18.sp,
                                    color: AppColor.buttonColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 30.h),
                          CustomText(
                            align: AlignmentDirectional.centerStart,
                            data: 'HomeScreen4'.tr,
                            fontsize: 18.sp,
                            color: AppColor.browneColor,
                            fontweight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    GetBuilder<HomeController>(builder: (controller) {
                      return Skeletonizer(
                        enabled: controller.isLoading,
                        child: const PropertiesSuggestedView(),
                      );
                    }),
                    SizedBox(height: 30.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                      child: CustomText(
                        align: AlignmentDirectional.centerStart,
                        data: 'HomeScreen5'.tr,
                        fontsize: 18.sp,
                        color: AppColor.browneColor,
                        fontweight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    GetBuilder<HomeController>(builder: (controller) {
                      return Skeletonizer(
                        enabled: controller.isLoading,
                        child: const VehiclesSuggestedView(),
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
