import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/login_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/auth_widgets/login_column.dart';

import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_image.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/custom_text_rich.dart';

import 'package:store/view/widgets/scroll_vieww.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollVieww(
          child: Stack(
        children: [
          Form(
            key: formKey,
            child: LoginColumn(
                controller: controller), ///////////////عمود حقول الادخال
          ),
          Positioned(
            top: 190.h,
            right: 0,
            child: const CustomImage(
              image: AppImageAssets.car2,
            ),
          ),
        ],
      )),
      bottomNavigationBar: Builder(builder: (context) {
        final kayboardOpen = MediaQuery.of(context).viewInsets.bottom;
        return SafeArea(
          child: AnimatedPadding(
            duration: Duration(milliseconds: 100),
            curve: Curves.easeInOut,
            padding: EdgeInsets.only(bottom: kayboardOpen),
            child: Padding(
              padding: EdgeInsets.all(
                16.r,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomButton(
                    data: 'LoginScreen5'.tr,
                    colorB: AppColor.buttonColor,
                    onPressed: () {
                      if (formKey.currentState!.validate() &&
                          controller.phoneTextController.text.isNotEmpty) {
                        controller.showSucess();
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        data: "LoginScreen6".tr,
                        color: AppColor.fontColor,
                        fontsize: 14.sp,
                        fontweight: FontWeight.bold,
                      ),
                      CustomTextRich(
                          data: "LoginScreen7".tr,
                          color: AppColor.browneColor,
                          fontsize: 14.sp,
                          fontweight: FontWeight.w500,
                          underlincolor: AppColor.browneColor,
                          onTap: () {
                            controller.closeKeyboard();
                            Get.toNamed(AppRouts.singUpScreen);
                          }),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
