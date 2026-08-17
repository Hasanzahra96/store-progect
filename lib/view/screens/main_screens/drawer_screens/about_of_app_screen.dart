import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/about_of_app_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/bulle_text.dart';

class AboutOfAppScreen extends StatelessWidget {
  const AboutOfAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'حول التطبيق',
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              padding: EdgeInsets.all(16.r),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: const AssetImage(AppImageAssets.logo),
                      radius: 70.r,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  CustomText(
                    data: 'App Name',
                    color: AppColor.fontColor,
                    fontsize: 22.sp,
                  ),
                  SizedBox(height: 32.h),
                  AboutOfAppWidget(
                    title: 'من نحن',
                    widget: CustomText(
                      data:
                          'تطبيق متخصص في بيع وشراء السيارات والعقارات داخل سوريا، يوفر تجربة سهلة وآمنة للبحث، النشر، والتواصل بين البائع والمشتري بشكل مباشر.',
                      color: AppColor.fontColor,
                      fontsize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  AboutOfAppWidget(
                    title: 'رؤيتنا',
                    widget: CustomText(
                      data:
                          'نسعى إلى توفير منصة موثوقة تجمع بين البائعين والمشترين وتقدم خدمات احترافية وتجربة استخدام مميزة تعتمد على التكنولوجيا الحديثة لتسهيل الحياة اليومية.',
                      color: AppColor.fontColor,
                      fontsize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const AboutOfAppWidget(
                      title: 'لماذا تختار التطبيق',
                      widget: Column(
                        children: [
                          BulletText(
                            text: 'آلاف الإعلانات',
                          ),
                          BulletText(
                            text: 'سيارات و عقارات',
                          ),
                          BulletText(
                            text: 'بحث متقدم',
                          ),
                          BulletText(
                            text: 'مكاتب و معارض',
                          ),
                          BulletText(
                            text: 'اشتراكات مرنة',
                          ),
                          BulletText(
                            text: 'دعم فني',
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 8.h,
                  ),
                  AboutOfAppWidget(
                      title: 'معلومات التطبيق',
                      widget: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                data: 'الإصدار',
                                color: AppColor.greyColor,
                                fontsize: 16.sp,
                              ),
                              CustomText(
                                data: '1.0.0',
                                color: AppColor.buttonColor,
                                fontsize: 18.sp,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                data: 'آخر تحديث',
                                color: AppColor.greyColor,
                                fontsize: 16.sp,
                              ),
                              CustomText(
                                data: 'مارس 2026',
                                color: AppColor.buttonColor,
                                fontsize: 18.sp,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                data: 'المطور',
                                color: AppColor.greyColor,
                                fontsize: 16.sp,
                              ),
                              CustomText(
                                data: 'my_App team',
                                color: AppColor.buttonColor,
                                fontsize: 18.sp,
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomButton(
                    data: 'تواصل معنا',
                    onPressed: () {},
                  )
                ],
              )),
        ));
  }
}
