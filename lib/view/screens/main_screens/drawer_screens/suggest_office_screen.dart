import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/controller/main_nav_controller/drawer_controller/suggest_office_controller.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/image_assets.dart';
import 'package:store/data/datasource/static/drop_down_list.dart';
import 'package:store/view/widgets/auth_widgets/custom_phone_field.dart';
import 'package:store/view/widgets/custom_Text_Form_Field.dart';
import 'package:store/view/widgets/custom_appbar.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/drop_down_widget.dart';
import 'package:store/view/widgets/main_widgets/advertisement_widgets/tow_column_widget.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/add_photo_suggest_office.dart';

class SuggestOfficeScreen extends GetView<SuggestOfficeController> {
  const SuggestOfficeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'اقترح مكتب'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: Column(
              children: [
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.button2Color,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.r),
                        ),
                      ),
                      width: 320.w,
                      constraints: BoxConstraints(
                        minHeight: 300.h,
                      ),
                      child: Column(children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.r),
                                  topRight: Radius.circular(12.r),
                                ),
                                child: AspectRatio(
                                  aspectRatio: 2 / 1.5,
                                  child: Image.asset(
                                    AppImageAssets.realEstate,
                                    filterQuality: FilterQuality.high,
                                    width: double.infinity,
                                    gaplessPlayback: true,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.all(8.0.r),
                              child: CustomText(
                                textAlign: TextAlign.center,
                                data: 'ساعدنا في توسيع شبكة المكاتب',
                                fontsize: 14.sp,
                                color: AppColor.whiteColor,
                                fontweight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Padding(
                          padding: EdgeInsets.all(2.r),
                          child: CustomText(
                            textAlign: TextAlign.center,
                            data:
                                'هل تعرف مكتباً أو معرضاً غير موجود في التطبيق ؟\nأرسل اقتراحك و نقوم بمراجعته و إضافته',
                            fontsize: 14.sp,
                            color: AppColor.fontColor,
                            fontweight: FontWeight.w500,
                          ),
                        ),
                      ])),
                ),
                SizedBox(height: 16.h),
                TowColumnWidget(
                  firstData: 'الدولة',
                  secondData: 'المدينة',
                  firstWidget: DropDownWidget(
                    data: 'اختر',
                    //  value: controller.selectedGeer,
                    // onChanged: (value) {
                    //   controller.basicdropdownChanged(value, 4);
                    // },
                    items: allRegons,
                    //   items: controller.geerlist
                  ),
                  secondWidget: DropDownWidget(
                    data: 'اختر',
                    //   value: controller.selectedFiole,
                    // onChanged: (value) {
                    //   controller.basicdropdownChanged(value, 5);
                    // },
                    items: allRegons,
                    //   items: controller.fiolelist
                  ),
                ),
                SizedBox(height: 16.h),
                TowColumnWidget(
                  firstData: 'الدولة',
                  secondData: '',
                  firstWidget: DropDownWidget(
                    data: 'اختر',
                    //  value: controller.selectedGeer,
                    // onChanged: (value) {
                    //   controller.basicdropdownChanged(value, 4);
                    // },
                    items: allRegons,
                    //   items: controller.geerlist
                  ),
                  secondWidget: const SizedBox(),
                ),
                SizedBox(height: 16.h),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: "اسم المكتب",
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                ),
                CustomTextFormField(
                  controller: controller.officeNameController,
                  hintText: 'أضف اسم المكتب',
                  validator: (value) {
                    return controller.officeNameValidatorSingUP(value);
                  },
                ),
                SizedBox(height: 16.h),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: "اسم المدير أو المالك",
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                ),
                CustomTextFormField(
                  controller: controller.manegreNameController,
                  hintText: 'أضف اسم مالك المكتب',
                  validator: (value) {
                    return controller.manegreNameValidatorSingUP(value);
                  },
                ),
                SizedBox(height: 16.h),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: "رقم الجوال",
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                ),
                CustomPhoneField(
                  controller: controller.phoneController,
                  initialCountryCode: controller.initialCountryCode,
                  onChanged: (value) => controller.onChangedPhoneSingUP(value),
                  onCountryChanged: (value) =>
                      controller.onCountryChangedSingUP(value),
                  validator: (value) => controller.validatorPhoneSingUP(),
                ),
                SizedBox(height: 16.h),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: "العنوان",
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                ),
                CustomTextFormField(
                  controller: controller.addressController,
                  hintText: 'أضف عنوان المكتب بالتفصيل',
                  validator: (value) {
                    return controller.addressValidatorSingUP(value);
                  },
                ),
                SizedBox(height: 16.h),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: "ملاحظات",
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                ),
                CustomTextFormField(
                  maxLines: 3,
                  controller: controller.notesController,
                  hintText: 'اكتب أي ملاحظات إضافية إن وجدت...',
                  validator: (value) {
                    return controller.notesValidatorSingUP(value);
                  },
                ),
                SizedBox(height: 16.h),
                CustomText(
                  align: AlignmentDirectional.centerStart,
                  data: "صورة أو شعار المكتب",
                  fontsize: 14.sp,
                  fontweight: FontWeight.w600,
                ),
                SizedBox(height: 8.h),
                AddPhotoSuggestOffice(
                    addPhotoController: controller.addPhotoController),
                SizedBox(height: 32.h),
                Center(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.crisis_alert_outlined,
                      ),
                      SizedBox(width: 2.w),
                      Flexible(
                        child: CustomText(
                          textAlign: TextAlign.center,
                          data:
                              "سيتم مراجعة جميع الاقتراحات من قبل فريقنا المختص قبل إضافتها إلى التطبيق لضمان جودة البيانات",
                          fontsize: 12.sp,
                          fontweight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32.h),
                CustomButton(
                  data: 'إرسال الاقتراح',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
