import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:store/core/constant/color.dart';
import 'package:store/core/constant/routess.dart';
import 'package:store/view/widgets/custom_button.dart';
import 'package:store/view/widgets/custom_text.dart';
import 'package:store/view/widgets/main_widgets/drawer_widgets/row_widget.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100.0.r,
              ),
              SizedBox(
                height: 32.h,
              ),
              CustomText(
                  data: 'تم الدفع بنجاح',
                  fontsize: 22.0.sp,
                  color: AppColor.buttonColor,
                  fontweight: FontWeight.bold),
              SizedBox(
                height: 16.h,
              ),
              CustomText(
                  data: 'يمكنك الآن الاستفادة من جميع مزايا الباقة',
                  fontsize: 14.0.sp,
                  color: AppColor.greyColor,
                  fontweight: FontWeight.bold),
              SizedBox(
                height: 32.h,
              ),
              Container(
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColor.button2Color),
                child: Column(children: [
                  RowWidget(title: 'الباقة', subTitle: 'الباقة السنوية'),
                  SizedBox(
                    height: 8.h,
                  ),
                  RowWidget(title: 'المدة', subTitle: '12 شهر'),
                  SizedBox(
                    height: 8.h,
                  ),
                  RowWidget(title: 'السعر', subTitle: '1000 ل.س'),
                  SizedBox(
                    height: 32.h,
                  ),
                  RowWidget(title: 'طريقة الدفع', subTitle: 'سيريتيل كاش'),
                  SizedBox(
                    height: 8.h,
                  ),
                  RowWidget(title: 'المبلغ المدفوع', subTitle: '1000 ل.س'),
                  SizedBox(
                    height: 32.h,
                  ),
                  RowWidget(title: 'تاريخ العملية', subTitle: '25 سبتمبر 2026'),
                  SizedBox(
                    height: 8.h,
                  ),
                  RowWidget(title: 'رقم العملية', subTitle: 'TX-0987654365'),
                ]),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            CustomButton(
              data: 'عرض تفاصيل الاشتراك',
              onPressed: () {
                Get.offAllNamed(AppRouts.showSubscribeDataScreen);
              },
            ),
            CustomButton(
              colorB: AppColor.button2Color,
              data: 'الذهاب إلى الرئيسية',
              colorF: AppColor.fontColor,
              onPressed: () {
                Get.offAllNamed(AppRouts.homeScreen);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
