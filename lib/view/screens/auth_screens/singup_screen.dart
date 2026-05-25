import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/auth_controller/singup_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/auth_widgets/singup_column.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';

import 'package:store/view/widgets/scroll_vieww.dart';

class SingupScreen extends GetView<SingupController> {
  const SingupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "SingupScreen1".tr,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.support_agent,
            ),
          ),
        ],
      ),
      body: ScrollVieww(
        child: Padding(
            padding: EdgeInsets.all(
              16.r,
            ),
            child: Form(
              key: controller.formKey1,
              child:
                  SingUpColumn(controller: controller), /////عمود حقول الادخال
            )),
      ),
      bottomNavigationBar: Builder(builder: (context) {
        final kayboardOpen = MediaQuery.of(context).viewInsets.bottom;
        return SafeArea(
          child: Padding(
              padding: EdgeInsets.only(bottom: kayboardOpen), //

              child: Padding(
                padding: EdgeInsets.all(
                  16.r,
                ),
                child: CustomButton(
                  data: 'SingupScreen10'.tr,
                  colorB: AppColor.buttonColor,
                  onPressed: () {
                    if (controller.formKey1.currentState!.validate() &&
                        controller.phoneTextController.text.isNotEmpty) {
                      Get.offNamed(AppRouts.verifyAccountScreen);
                    }
                  },
                ),
              )),
        );
      }),
    );
  }
}
