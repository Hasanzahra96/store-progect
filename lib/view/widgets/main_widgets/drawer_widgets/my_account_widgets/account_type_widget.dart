import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/my_account_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/functions/valid_input.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_anm_swit.dart';
import 'package:store/view/widgets/custom_radio.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/radio_row_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/list_tile_my_account_widget.dart';

class AccountTypeWidget extends GetView<MyAccountController> {
  const AccountTypeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAccountController>(
      id: 'accountType',
      builder: (controller) {
        return Form(
          key: controller.formKey1,
          child: Column(
            children: [
              ListTileMyAccountWidget(
                title: 'نوع الحساب',
                subTitle: 'شخصي',
                trailing: controller.isEdit
                    ? InkWell(
                        onTap: () {
                          if (controller.formKey1.currentState!.validate()) {
                            controller.onChangeEdit('account type');
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
                          controller.onChangeEdit('account type');
                        },
                        icon: const Icon(Icons.mode_edit_outline),
                        visualDensity: VisualDensity.compact,
                      ),
              ),
              CustomAnmSwit(
                  child: controller.isEdit
                      ? Container(
                          padding: EdgeInsets.all(8.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColor.button2Color),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColor.whiteColor),
                                child: RadioRowWidget(
                                  radio: CustomRadio(
                                    value: 1,
                                    groupValue: controller.selectedValueContact,
                                    onChanged: (value) => controller
                                        .radioContactChangeValue(value!),
                                  ),
                                  title: 'شخصي',
                                  fontsize: 16.sp,
                                  color: AppColor.buttonColor,
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                padding: EdgeInsets.all(8.r),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: AppColor.whiteColor),
                                child: RadioRowWidget(
                                  radio: CustomRadio(
                                    value: 2,
                                    groupValue: controller.selectedValueContact,
                                    onChanged: (value) => controller
                                        .radioContactChangeValue(value!),
                                  ),
                                  title: 'مكتب',
                                  fontsize: 16.sp,
                                  color: AppColor.buttonColor,
                                ),
                              ),
                              CustomAnmSwit(
                                child: controller.selectedValueContact == 2
                                    ? Column(
                                        children: [
                                          ListTileMyAccountWidget(
                                              color: AppColor.whiteColor,
                                              title: 'اسم المكتب',
                                              subtitle: CustomTextFormField(
                                                hintText: 'ادخل الاسم',
                                                controller: controller
                                                    .officeNameController,
                                                validator: (val) {
                                                  return validInput(
                                                      val!, 6, 30, 'username');
                                                },
                                              )),
                                          ListTileMyAccountWidget(
                                              color: AppColor.whiteColor,
                                              title: 'رقم السجل التجاري',
                                              subtitle: CustomTextFormField(
                                                hintText: 'ادخل الرقم',
                                                controller:
                                                    controller.numberController,
                                                keyboardType:
                                                    TextInputType.number,
                                                validator: (val) {
                                                  return validInput(
                                                      val!, 6, 30, 'username');
                                                },
                                              )),
                                        ],
                                      )
                                    : SizedBox.shrink(),
                              )
                            ],
                          ),
                        )
                      : SizedBox.shrink()),
            ],
          ),
        );
      },
    );
  }
}
