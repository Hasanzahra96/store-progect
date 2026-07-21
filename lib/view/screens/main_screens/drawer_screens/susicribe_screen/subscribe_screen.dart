import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/subscribe_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/data/datasource/static/drawer_list/subscribe_list.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_text.dart';

class SubscribeScreen extends GetView<SubscribeController> {
  const SubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          title: 'الاشتراك',
        ),
        body: SingleChildScrollView(
          child: Column(
            children: subscribeList.map((subscribe) {
              return InkWell(
                onTap: () {
                  controller.goTosubscribeDetailesScreen(subscribe);
                },
                child: Padding(
                  padding: EdgeInsets.all(16.r),
                  child: Container(
                    height: 220.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    decoration: BoxDecoration(
                        color: subscribe.isYearly
                            ? AppColor.buttonColor
                            : AppColor.browneColor,
                        borderRadius: BorderRadius.circular(24.r)),
                    child: Center(
                      child: Row(
                        children: [
                          CustomText(
                            data: subscribe.price ?? '',
                            fontweight: FontWeight.bold,
                            fontsize: 32.sp,
                            color: subscribe.isYearly
                                ? AppColor.browneColor
                                : AppColor.buttonColor,
                          ),
                          CustomText(
                            data: subscribe.subPrice ?? '',
                            fontsize: 16.sp,
                            color: subscribe.isYearly
                                ? AppColor.browneColor
                                : AppColor.buttonColor,
                          ),
                          const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.all(4.r),
                                decoration: const BoxDecoration(
                                    color: AppColor.whiteColor,
                                    shape: BoxShape.circle),
                                child: Icon(Icons.date_range_outlined,
                                    size: 42.r, color: AppColor.buttonColor),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    data: subscribe.monthNumber ?? '',
                                    fontsize: 24.sp,
                                    color: AppColor.whiteColor,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
