import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/my_account_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/functions/valid_input.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/list_tile_my_account_widget.dart';

class PasswordEidetWidget extends GetView<MyAccountController> {
  const PasswordEidetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAccountController>(
      id: 'pass',
      builder: (controller) {
        return Form(
          key: controller.formKey2,
          child: Column(
            children: [
              ListTileMyAccountWidget(
                title: 'كلمه المرور',
                subTitle: '**********',
                trailing: controller.isPassEdit
                    ? InkWell(
                        onTap: () {
                          if (controller.formKey2.currentState!.validate()) {
                            controller.onChangeEdit('pass');
                          }
                        },
                        child: Container(
                          height: 42.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.browneColor),
                          child: const Center(
                              child: CustomText(
                            data: 'حفظ',
                            color: AppColor.whiteColor,
                          )),
                        ),
                      )
                    : IconButton(
                        onPressed: () {
                          controller.onChangeEdit('pass');
                        },
                        icon: const Icon(Icons.mode_edit_outline),
                        visualDensity: VisualDensity.compact,
                      ),
              ),
              CustomAnmSwit(
                  child: controller.isPassEdit
                      ? Container(
                          padding: EdgeInsets.all(8.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.button2Color),
                          child: Column(children: [
                            ListTileMyAccountWidget(
                                color: AppColor.whiteColor,
                                title: 'كلمه المرور الجديده',
                                subtitle: CustomTextFormField(
                                  hintText: 'ادخل كلمه المرور',
                                  controller: controller.newPassController,
                                  obscureText: controller.isobscare,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      controller.isobscare
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                    onPressed: () {
                                      controller.changeSingUP();
                                    },
                                  ),
                                  validator: (val) {
                                    return validInput(val!, 6, 30, 'password');
                                  },
                                )),
                            ListTileMyAccountWidget(
                                color: AppColor.whiteColor,
                                title: 'تأكيد كلمه المرور',
                                subtitle: CustomTextFormField(
                                  hintText: 'ادخل كلمه المرور مره اخرى',
                                  controller: controller.confirmPassController,
                                  obscureText: controller.isobsCareconfirm,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      controller.isobsCareconfirm
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                    ),
                                    onPressed: () {
                                      controller.changeConfirmSingUP();
                                    },
                                  ),
                                  validator: (val) {
                                    return controller.passValidatorConfirm(val);
                                  },
                                )),
                          ]))
                      : const SizedBox.shrink())
            ],
          ),
        );
      },
    );
  }
}
