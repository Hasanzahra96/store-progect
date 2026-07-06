import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/share_icone_widget.dart';

class ShareAppScreen extends StatelessWidget {
  const ShareAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'شارك التطبيق',
          isBack: true,
          isShape: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 200.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: AppColor.button2Color,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.r),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.r),
                        child: Image.asset(
                          AppImageAssets.share,
                        )),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomText(
                  data: 'ادع أصدقائك',
                  fontsize: 18.sp,
                  fontweight: FontWeight.bold,
                  color: AppColor.buttonColor,
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomText(
                  textAlign: TextAlign.center,
                  data:
                      'شارك التطبيق مع أصدقائك و ساهم في اكتشاف \n السيارات  العقارات بكل سولة',
                  fontsize: 14.sp,
                  color: AppColor.fontColor,
                  fontweight: FontWeight.bold,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColor.button2Color,
                    ),
                    child: Padding(
                        padding: EdgeInsets.all(16.r),
                        child: Column(
                          children: [
                            CustomText(
                              align: AlignmentDirectional.centerStart,
                              data: 'انسخ الرابط',
                              fontsize: 16.sp,
                              color: AppColor.buttonColor,
                              fontweight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Container(
                              height: 90.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(16.r)),
                              child: Padding(
                                padding: EdgeInsets.all(16.r),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      data: 'https://www.store.com',
                                      fontsize: 18.sp,
                                      color: AppColor.fontColor,
                                      fontweight: FontWeight.bold,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        color: AppColor.browneColor,
                                      ),
                                      padding: EdgeInsets.all(2.r),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            size: 30.r,
                                            Icons.copy,
                                            color: AppColor.buttonColor,
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ))),
                SizedBox(
                  height: 16.h,
                ),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: 'خيارات المشاركة السريعة',
                  fontsize: 18.sp,
                  color: AppColor.browneColor,
                  fontweight: FontWeight.bold,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShareIconeWidget(
                      image: AppImageAssets.whatsapps,
                      onPress: () {},
                    ),
                    ShareIconeWidget(
                      image: AppImageAssets.facebooks,
                      onPress: () {},
                    ),
                    ShareIconeWidget(
                      image: AppImageAssets.telegrams,
                      onPress: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.r),
          child:
              CustomButton(data: 'شارك التطبيق الآن', onPressed: () async {}),
        )));
  }
}
